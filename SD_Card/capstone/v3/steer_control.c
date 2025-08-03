#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#include "shared.h"

#define STEER_REG_ADDR   0     // AXI register index for steer
#define FIXED_DUTY       80    // Fixed PWM duty for steering
#define FIXED_TIME_SEC   0.1f  // Fixed time window (s)
#define TICKS_PER_SEC    781250  // Hardware ticks per second

// Steering control thread:
// - Divides the image x-coordinate into zones
// - Issues fixed-angle steer commands when zone changes
// - Returns to center when appropriate
void* steer_control_thread(void* arg) {
    volatile unsigned int* regs = ((volatile unsigned int**)arg)[0];
    shared_data_t* shared = ((shared_data_t**)arg)[1];

    printf("[INIT] steer_control_thread started.\n");
    if (!regs) {
        printf("[ERROR] regs pointer is NULL!\n");
        return NULL;
    }

    // Wait for first valid UDP data
    while (!shared->valid) {
        printf("[WAIT] waiting for valid UDP data...\n");
        usleep(100000);
    }
    printf("[START] Steering control enabled.\n");

    int steer_count = 0;
    int return_mode = 0;
    unsigned int last_dir = 0;
    int prev_zone = 0;

    while (1) {
        // Read x-center
        pthread_mutex_lock(&shared->lock);
        float x = shared->center_x;
        pthread_mutex_unlock(&shared->lock);

        int zone = 0;
        // Define 8 steering zones
        if (x >= 0.495f && x <= 0.505f) zone = 0;
        else if (x < 0.125f)            zone = -4;
        else if (x < 0.25f)             zone = -3;
        else if (x < 0.375f)            zone = -2;
        else if (x < 0.495f)            zone = -1;
        else if (x <= 0.625f)           zone = 1;
        else if (x <= 0.75f)            zone = 2;
        else if (x <= 0.875f)           zone = 3;
        else                            zone = 4;

        printf("[DEBUG] x=%.4f zone=%d prev=%d count=%d ret=%d\n",
               x, zone, prev_zone, steer_count, return_mode);

        int trigger = 0;
        unsigned int dir = 0;

        // Zone-change triggering logic
        if (!return_mode) {
            if (zone != 0 && abs(zone) > abs(prev_zone)) {
                dir = (zone > 0) ? 0b01 : 0b10;
                trigger = 1; steer_count++;
                last_dir = dir; prev_zone = zone;
                printf("[TRIGGER] zone inc: dir=%d count=%d\n", dir, steer_count);
            } else if (zone == 0 && steer_count > 0) {
                return_mode = 1; printf("[INFO] Entering RETURN MODE\n");
            } else if (zone != 0 && abs(zone) < abs(prev_zone)) {
                prev_zone = zone; printf("[SKIP] zone dec: no trigger\n");
            }
        } else {
            // Return mode: invert last_dir
            dir = (last_dir == 0b01) ? 0b10 :
                  (last_dir == 0b10) ? 0b01 : 0;
        }

        if (steer_count > 0 && dir) {
            trigger = 1; steer_count--;
            printf("[RETURN] correct dir=%d remaining=%d\n", dir, steer_count);
        } else {
            return_mode = 0; prev_zone = 0;
            printf("[INFO] Exit RETURN MODE\n");
        }

        // Pack and write steer command
        if (trigger) {
            unsigned int ticks = ((unsigned int)(FIXED_TIME_SEC * TICKS_PER_SEC)&0x1FFFFF);
            unsigned int val = (1<<31) | ((dir&0x3)<<29) | ((FIXED_DUTY&0xFF)<<21) | ticks;
            const char* dstr = (dir==0b01) ? "RIGHT" :
                               (dir==0b10) ? "LEFT"  : "UNK";
            printf("[WRITE] steer=%s duty=%d time=%u count=%d%s\n",
                   dstr, FIXED_DUTY, ticks, steer_count,
                   return_mode ? " [RET]" : "");
            pthread_mutex_lock(&shared->axi_mutex);
            regs[STEER_REG_ADDR] = val;
            pthread_mutex_unlock(&shared->axi_mutex);
        }

        usleep(10000); // 10ms
    }

    return NULL;
}


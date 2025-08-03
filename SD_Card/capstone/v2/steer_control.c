#include <unistd.h>
#include <stdlib.h>   // for abs()
#include <math.h>
#include <stdio.h>
#include "shared.h"

#define STEER_REG_ADDR 0
#define FIXED_DUTY 80
#define FIXED_TIME_SEC 0.1
#define TICKS_PER_SEC 781250

void* steer_control_thread(void* arg) {
    volatile unsigned int* regs = ((volatile unsigned int**)arg)[0];
    shared_data_t* shared = ((shared_data_t**)arg)[1];

    printf("[INIT] steer_control_thread started.\n");

    if (regs == NULL) {
        printf("[ERROR] regs pointer is NULL!\n");
    }

    // Wait until valid UDP data received
    while (!shared->valid) {
        printf("[WAIT] waiting for valid UDP data...\n");
        usleep(100000); // 100ms
    }

    printf("[START] valid UDP data received. Steering control enabled.\n");

    int steer_count = 0;
    int return_mode = 0;
    unsigned int last_steer_dir = 0;
    int prev_zone_level = 0;

    while (1) {
        pthread_mutex_lock(&shared->lock);
        float x = shared->center_x;
        pthread_mutex_unlock(&shared->lock);

        int zone_level = 0;
        unsigned int steer_dir = 0;
        int trigger = 0;

        // Define steering zones based on x position
        if (x >= 0.495f && x <= 0.505f) {
            zone_level = 0;
        } else if (x < 0.125f) {
            zone_level = -4;
        } else if (x < 0.25f) {
            zone_level = -3;
        } else if (x < 0.375f) {
            zone_level = -2;
        } else if (x < 0.495f) {
            zone_level = -1;
        } else if (x <= 0.625f) {
            zone_level = 1;
        } else if (x <= 0.75f) {
            zone_level = 2;
        } else if (x <= 0.875f) {
            zone_level = 3;
        } else if (x <= 1.0f) {
            zone_level = 4;
        }

        // Debug log
        printf("[DEBUG] x=%.4f zone=%d prev_zone=%d count=%d return=%d\n",
               x, zone_level, prev_zone_level, steer_count, return_mode);

        if (!return_mode) {
            if (zone_level != 0 && abs(zone_level) > abs(prev_zone_level)) {
                steer_dir = (zone_level > 0) ? 0b01 : 0b10;
                trigger = 1;
                steer_count++;
                last_steer_dir = steer_dir;
                prev_zone_level = zone_level;
                printf("[TRIGGER] zone increased: steer_dir=%d count=%d\n", steer_dir, steer_count);
            } else if (zone_level == 0 && steer_count > 0) {
                return_mode = 1;
                printf("[INFO] Entering RETURN MODE\n");
            } else if (zone_level != 0 && abs(zone_level) < abs(prev_zone_level)) {
                prev_zone_level = zone_level;
                printf("[SKIP] zone decreased: no trigger\n");
            }
        } else {
            steer_dir = (last_steer_dir == 0b01) ? 0b10 :
                        (last_steer_dir == 0b10) ? 0b01 : 0;

            if (steer_count > 0 && steer_dir != 0) {
                trigger = 1;
                steer_count--;
                printf("[RETURN] correcting direction: steer_dir=%d remaining=%d\n", steer_dir, steer_count);
            } else {
                return_mode = 0;
                prev_zone_level = 0;
                printf("[INFO] Exit RETURN MODE\n");
            }
        }

        if (trigger) {
            unsigned int steer_time = (unsigned int)(FIXED_TIME_SEC * TICKS_PER_SEC) & 0x1FFFFF;
            unsigned int steer_val = (1 << 31) |
                                     ((steer_dir & 0x3) << 29) |
                                     ((FIXED_DUTY & 0xFF) << 21) |
                                     steer_time;

            const char* dir_str = (steer_dir == 0b01) ? "RIGHT" :
                                  (steer_dir == 0b10) ? "LEFT" : "UNKNOWN";

            printf("[WRITE] dir=%s (%u), zone=%d, duty=%d, time=%u, count=%d",
                   dir_str, steer_dir, zone_level, FIXED_DUTY, steer_time, steer_count);
            if (return_mode) printf(" [RETURN MODE]");
            printf("\n");

            pthread_mutex_lock(&shared->axi_mutex);
            regs[STEER_REG_ADDR] = steer_val;
            pthread_mutex_unlock(&shared->axi_mutex);
        }

        usleep(10000); // 10ms
    }

    return NULL;
}


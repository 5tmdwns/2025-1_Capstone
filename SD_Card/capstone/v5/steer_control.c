#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#include <time.h>
#include "shared.h"   // defines shared_data_t

#define STEER_REG_ADDR     0       // AXI register index for steer
#define FIXED_DUTY         185     // Fixed PWM duty for steering
#define FIXED_TIME_SEC     0.05f   // Fixed time window (s)
#define TICKS_PER_SEC      781250  // Hardware ticks per second

void* steer_control_thread(void* arg) {
    // arg[0] = regs pointer, arg[1] = shared_data pointer
    volatile unsigned int* regs = ((volatile unsigned int**)arg)[0];
    shared_data_t* shared       = ((shared_data_t**)arg)[1];

    printf("[INIT] Steer control thread started.\n");

    // wait until first UDP packet arrives
    while (!shared->valid) {
        usleep(100000);
    }

    printf("[STEER] UDP data valid, entering control loop.\n");

    static time_t timeout_start = 0;
    int steer_count = 0;
    int return_mode = 0;
    unsigned int last_steer_dir = 0;
    int prev_zone_level = 0;

    while (1) {
        time_t now = time(NULL);
        double dt = difftime(now, shared->last_update_time);

        int zone_level = 0;
        unsigned int dir = 0, duty = FIXED_DUTY, standby = 0;
        int trigger = 0;

        if (dt < 3.0) {
            // --- NORMAL STEER MODE ---
            timeout_start = 0;

            float x;
            pthread_mutex_lock(&shared->lock);
            x = shared->center_x;
            pthread_mutex_unlock(&shared->lock);

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
            } else if (x < 0.625f) {
                zone_level = 1;
            } else if (x < 0.75f) {
                zone_level = 2;
            } else if (x < 0.875f) {
                zone_level = 3;
            } else if (x <= 1.0f) {
                zone_level = 4;
            }

            printf("[DEBUG] x=%.4f zone=%d prev_zone=%d count=%d return=%d\n",
                x, zone_level, prev_zone_level, steer_count, return_mode);

            if (!return_mode) {
                if (zone_level != 0 && abs(zone_level) > abs(prev_zone_level)) {
                    dir = (zone_level > 0) ? 0b01 : 0b10;
                    trigger = 1;
                    standby = 1;
                    steer_count++;
                    last_steer_dir = dir;
                    prev_zone_level = zone_level;
                    printf("[TRIGGER] zone increased: steer_dir=%d count=%d\n", dir, steer_count);
                } else if (zone_level == 0 && steer_count > 0) {
                    return_mode = 1;
                    printf("[INFO] Entering RETURN MODE\n");
                } else if (zone_level != 0 && abs(zone_level) < abs(prev_zone_level)) {
                    prev_zone_level = zone_level;
                    printf("[SKIP] zone decreased: no trigger\n");
                }
            } else {
                dir = (last_steer_dir == 0b01) ? 0b10 :
                      (last_steer_dir == 0b10) ? 0b01 : 0;

                if (steer_count > 0 && dir != 0) {
                    trigger = 1;
                    standby = 1;
                    steer_count--;
                    printf("[RETURN] correcting direction: steer_dir=%d remaining=%d\n", dir, steer_count);
                } else {
                    return_mode = 0;
                    prev_zone_level = 0;
                    printf("[INFO] Exit RETURN MODE\n");
                }
            }
        } else {
            // --- TIMEOUT: record start of dt>=3s ---
            if (timeout_start == 0) {
                timeout_start = now;
            }
            double since_to = difftime(now, timeout_start);

            if (since_to < 3.0) {
                // FULL STOP for 3s
                standby = 0;  // motor OFF
                duty = 0;
                dir = 0;
                trigger = 1;
                printf("[STEER] TIMEOUT STOP (%.1fs/3s)\n", since_to);
            } else {
                // SEARCH STEER MODE: only LEFT/RIGHT
                standby = 1;  // motor ON
                duty = FIXED_DUTY;

                float last_x;
                pthread_mutex_lock(&shared->lock);
                last_x = shared->center_x;
                pthread_mutex_unlock(&shared->lock);

                if (last_x <= 0.1f) {
                    dir = 0b10;  // LEFT
                    trigger = 1;
                    printf("[STEER] SEARCH LEFT (last_x=%.2f)\n", last_x);
                } else if (last_x >= 0.9f) {
                    dir = 0b01;  // RIGHT
                    trigger = 1;
                    printf("[STEER] SEARCH RIGHT (last_x=%.2f)\n", last_x);
                }
                // no CENTER branch: no command when 0.1 < last_x < 0.9
            }
        }

        // pack & write steer command if needed
        if (trigger) {
            unsigned int ticks = ((unsigned int)(FIXED_TIME_SEC * TICKS_PER_SEC) & 0x1FFFFF);
            unsigned int val = ((standby & 1) << 31)
                             | ((dir & 0x3) << 29)
                             | ((duty & 0xFF) << 21)
                             | ticks;
            pthread_mutex_lock(&shared->axi_mutex);
            regs[STEER_REG_ADDR] = val;
            pthread_mutex_unlock(&shared->axi_mutex);
        }

        usleep(10000);  // 10ms
    }

    return NULL;
}


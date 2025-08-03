#include <unistd.h>
#include <math.h>
#include <stdio.h>
#include "shared.h"

#define STEER_REG_ADDR 0
#define BASE_DUTY 80
#define MAX_DUTY 100
#define TIME_SEC 0.1
#define TICKS_PER_SEC 781250

void* steer_control_thread(void* arg) {
    volatile unsigned int* regs = ((volatile unsigned int**)arg)[0];
    shared_data_t* shared = ((shared_data_t**)arg)[1];

    int steer_count = 0;           // Count how many times steering was triggered
    int return_mode = 0;           // Indicates whether we are auto-centering
    unsigned int last_steer_dir = 0; // Last steering direction

    while (1) {
        pthread_mutex_lock(&shared->lock);
        if (!shared->valid) {
            pthread_mutex_unlock(&shared->lock);
            usleep(10000);
            continue;
        }
        float x = shared->center_x;
        pthread_mutex_unlock(&shared->lock);

        float delta = x - 0.5f;
        int steer_duty = (int)(BASE_DUTY + fmin(fabs(delta) * 800.0f, MAX_DUTY - BASE_DUTY));
        unsigned int steer_dir = 0;
        int trigger = 0;

        if (!return_mode) {
            // Determine direction based on bounding box X position
            if (x >= 0.55f && x <= 1.0f) {
                steer_dir = 0b01; // RIGHT
                trigger = 1;
                steer_count++;
                last_steer_dir = steer_dir;
            } else if (x >= 0.0f && x <= 0.45f) {
                steer_dir = 0b10; // LEFT
                trigger = 1;
                steer_count++;
                last_steer_dir = steer_dir;
            } else if (steer_count > 0) {
                return_mode = 1; // Enter auto-centering mode
            }
        } else {
            // Auto-center: reverse last steering direction
            steer_dir = (last_steer_dir == 0b01) ? 0b10 :
                        (last_steer_dir == 0b10) ? 0b01 : 0;

            if (steer_count > 0 && steer_dir != 0) {
                trigger = 1;
                steer_count--;
            } else {
                return_mode = 0;
            }
        }

        if (trigger) {
            unsigned int steer_time = (unsigned int)(TIME_SEC * TICKS_PER_SEC) & 0x1FFFFF;
            unsigned int steer_val = (1 << 31) |
                                     ((steer_dir & 0x3) << 29) |
                                     ((steer_duty & 0xFF) << 21) |
                                     steer_time;

            // Debug print
            const char* dir_str = (steer_dir == 0b01) ? "RIGHT" :
                                  (steer_dir == 0b10) ? "LEFT" : "UNKNOWN";
            printf("[STEER] dir=%s (%u), duty=%d, time=%u", dir_str, steer_dir, steer_duty, steer_time);
            if (return_mode) printf(" [RETURN MODE]");
            printf("\n");

            // Write to AXI register
            pthread_mutex_lock(&shared->axi_mutex);
            regs[STEER_REG_ADDR] = steer_val;
            pthread_mutex_unlock(&shared->axi_mutex);
        }

        usleep(10000); // 10ms loop
    }

    return NULL;
}


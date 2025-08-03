#include <unistd.h>
#include <math.h>
#include <stdio.h>
#include "shared.h"

#define DRIVE_REG_ADDR 1
#define TARGET_DIST 300.0f
#define DEAD_ZONE 10.0f
#define TIME_SEC 0.01
#define TICKS_PER_SEC 781250

void* drive_control_thread(void* arg) {
    volatile unsigned int* regs = ((volatile unsigned int**)arg)[0];
    shared_data_t* shared = ((shared_data_t**)arg)[1];

    while (1) {
        pthread_mutex_lock(&shared->lock);
        if (!shared->valid) {
            pthread_mutex_unlock(&shared->lock);
            usleep(10000);
            continue;
        }
        float dist = shared->distance;
        pthread_mutex_unlock(&shared->lock);

        float error = dist - TARGET_DIST;
        unsigned int drive_dir_a = 0, drive_dir_b = 0;
        unsigned int duty_a = 0, duty_b = 0;
        int trigger = 0;

        if (fabs(error) > DEAD_ZONE) {
            int duty = (int)fmin(fabs(error) * 1.5f, 100.0f);

            if (error < 0) {
                drive_dir_a = drive_dir_b = 0b01; // BACKWARD
            } else {
                drive_dir_a = drive_dir_b = 0b10; // FORWARD
            }

            duty_a = duty_b = duty;
            trigger = 1;
        }

        if (trigger) {
            unsigned int drive_val = (1 << 31) |
                                     ((drive_dir_a & 0x3) << 29) |
                                     ((duty_a & 0xFF) << 21) |
                                     (0 << 10) |
                                     ((duty_b & 0xFF) << 2) |
                                     (drive_dir_b & 0x3);

            const char* dir_str = (drive_dir_a == 0b10) ? "FORWARD" :
                                  (drive_dir_a == 0b01) ? "BACKWARD" : "UNKNOWN";
            printf("[DRIVE] dir=%s, duty=%d\n", dir_str, duty_a);

            pthread_mutex_lock(&shared->axi_mutex);
            regs[DRIVE_REG_ADDR] = drive_val;
            pthread_mutex_unlock(&shared->axi_mutex);
        }

        usleep(10000); // 10ms loop
    }

    return NULL;
}


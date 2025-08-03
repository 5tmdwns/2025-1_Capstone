#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#include <time.h>
#include <math.h>
#include "shared.h"    // defines shared_data_t, TARGET_DIST, DEAD_ZONE_LOW/HIGH, SCALE, etc.

#define DRIVE_REG_ADDR   1
#define TARGET_DIST      250.0f
#define DEAD_ZONE_LOW    230.0f
#define DEAD_ZONE_HIGH   270.0f
#define DUTY_MIN         100
#define DUTY_MAX         150
#define SCALE            1.75f

void* drive_control_thread(void* arg) {
    // arg[0] = regs pointer, arg[1] = shared_data pointer
    volatile unsigned int* regs = ((volatile unsigned int**)arg)[0];
    shared_data_t* shared       = ((shared_data_t**)arg)[1];

	while (!shared->valid) {
        printf("[WAIT] waiting for initial UDP data...\n");
        usleep(100000);
    }
    printf("[START] first UDP data received, entering control loop.\n");

    static time_t timeout_start = 0;  // marks when dt >= 3.0s first occurred

    while (1) {
        time_t now = time(NULL);

        // 1) read last_update_time and distance atomically
        double dt;
        float  dist;
        pthread_mutex_lock(&shared->lock);
          dt   = difftime(now, shared->last_update_time);
          dist = shared->distance;
        pthread_mutex_unlock(&shared->lock);

        unsigned int dirA = 0, dirB = 0, duty = 0, standby = 1;
        int trigger = 0;

        if (dt < 3.0) {
            // --- NORMAL DRIVE MODE ---
            timeout_start = 0;    // reset searchâtimer

            float error = dist - TARGET_DIST;
            // Deadâzone: hold position
            if (dist >= DEAD_ZONE_LOW && dist <= DEAD_ZONE_HIGH) {
                standby = 0; duty = 0; dirA = dirB = 0; trigger = 1;
                printf("[DRIVE] Deadâzone STOP\n");
            } else {
                // Proportional drive outside deadâzone
                standby = 1;
                float d = DUTY_MIN + fminf(fabsf(error)*SCALE, (float)(DUTY_MAX - DUTY_MIN));
				duty = (unsigned int)roundf(d);

                if (error < 0) {
                    dirA = dirB = 0b01;  // FORWARD
                } else {
                    dirA = dirB = 0b10;  // BACKWARD
                }
                trigger = 1;
                printf("[DRIVE] MOVE %s duty=%d error=%.2f\n",
                       (dirA==0b01)?"FORWARD":"BACKWARD", duty, error);
            }
        }
        else {
            // --- TIMEOUT: first stamp when dt>=3s ---
            if (timeout_start == 0) {
                timeout_start = now;
            }
            double since_to = difftime(now, timeout_start);

            if (since_to < 3.0) {
                // 3s FULL STOP before search
                standby = 0; duty = 0; dirA = dirB = 0; trigger = 1;
                printf("[DRIVE] TIMEOUT STOP (%.1fs/3s)\n", since_to);
            } else {
                // ENTER SEARCH DRIVE MODE: both wheels forward
                standby = 1; duty = DUTY_MAX; dirA = dirB = 0b10; trigger = 1;
                printf("[DRIVE] TIMEOUT SEARCH DRIVE\n");
            }
        }

        // 2) pack & write to AXI if needed
        if (trigger) {
            unsigned int val = ((standby & 1) << 31)
                             | ((dirA    & 3) << 29)
                             | ((duty   &0xFF) << 21)
                             | (0 << 10)
                             | ((duty   &0xFF) << 2)
                             |  (dirB   &   3);

            pthread_mutex_lock(&shared->axi_mutex);
              regs[DRIVE_REG_ADDR] = val;
            pthread_mutex_unlock(&shared->axi_mutex);
        }

        // 10 ms cycle
        usleep(10000);
    }

    return NULL;
}


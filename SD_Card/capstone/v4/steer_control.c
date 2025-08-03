#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#include <time.h>
#include "shared.h"    // defines shared_data_t

#define STEER_REG_ADDR   0     // AXI register index for steer
#define FIXED_DUTY       80    // Fixed PWM duty for steering
#define FIXED_TIME_SEC   0.1f  // Fixed time window (s)
#define TICKS_PER_SEC    781250  // Hardware ticks per second

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

    while (1) {
        time_t now = time(NULL);
        double dt = difftime(now, shared->last_update_time);

        unsigned int dir = 0, duty = FIXED_DUTY, standby = 1;
        int trigger = 0;

        if (dt < 3.0) {
            // --- NORMAL STEER MODE ---
            timeout_start = 0;

            // --- your existing zoneâbased logic here ---
            // e.g.:
            float x;
            pthread_mutex_lock(&shared->lock);
              x = shared->center_x;
            pthread_mutex_unlock(&shared->lock);

            int zone;
            if      (x >= 0.495f && x <= 0.505f) zone =  0;
            else if (x <  0.125f)               zone = -4;
            else if (x <  0.25f)                zone = -3;
            else if (x <  0.375f)               zone = -2;
            else if (x <  0.495f)               zone = -1;
            else if (x <= 0.625f)               zone =  1;
            else if (x <= 0.75f)                zone =  2;
            else if (x <= 0.875f)               zone =  3;
            else                                zone =  4;

            static int prev_zone = 0;
            if (zone != prev_zone) {
                prev_zone = zone;
                trigger = 1;
                standby = 1;       // motor ON in normal mode
                duty    = FIXED_DUTY;
                if (zone <  0) dir = 0b10;  // LEFT
                else if (zone > 0) dir = 0b01;  // RIGHT
                else             dir = 0;     // CENTER
                printf("[STEER] ZONE %d â dir=%s\n",
                       zone,
                       (dir==0b10)?"LEFT":(dir==0b01)?"RIGHT":"CENTER");
            }
        }
        else {
            // --- TIMEOUT: record start of dt>=3s ---
            if (timeout_start == 0) {
                timeout_start = now;
            }
            double since_to = difftime(now, timeout_start);

            if (since_to < 3.0) {
                // FULL STOP for 3s
                standby = 0;  // motor OFF
                duty    = 0;
                dir     = 0;
                trigger = 1;
                printf("[STEER] TIMEOUT STOP (%.1fs/3s)\n", since_to);
            } else {
                // SEARCH STEER MODE: only LEFT/RIGHT
                standby = 1;  // motor ON
                duty    = FIXED_DUTY;

                // decide based on last seen x
                float last_x;
                pthread_mutex_lock(&shared->lock);
                  last_x = shared->center_x;
                pthread_mutex_unlock(&shared->lock);

                if (last_x <= 0.1f) {
                    dir = 0b10;  // LEFT
                    trigger = 1;
                    printf("[STEER] SEARCH LEFT (last_x=%.2f)\n", last_x);
                }
                else if (last_x >= 0.9f) {
                    dir = 0b01;  // RIGHT
                    trigger = 1;
                    printf("[STEER] SEARCH RIGHT (last_x=%.2f)\n", last_x);
                }
                // no CENTER branch â no command when 0.1 < last_x < 0.9
            }
        }

        // pack & write steer command if needed
        if (trigger) {
            unsigned int ticks = ((unsigned int)(FIXED_TIME_SEC * TICKS_PER_SEC) & 0x1FFFFF);
            unsigned int val   = ((standby & 1)       << 31)
                               | ((dir     & 0x3)     << 29)
                               | ((duty    & 0xFF)    << 21)
                               |  ticks;
            pthread_mutex_lock(&shared->axi_mutex);
              regs[STEER_REG_ADDR] = val;
            pthread_mutex_unlock(&shared->axi_mutex);
        }

        usleep(10000);  // 10ms
    }

    return NULL;
}


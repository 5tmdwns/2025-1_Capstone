#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#include <time.h>
#include <errno.h>
#include "shared.h"

#define STEER_REG_ADDR   0
#define FIXED_DUTY      185      // PWM duty for steering
#define FIXED_TIME_SEC  0.05f    // Time window (s)
#define TICKS_PER_SEC  781250    // Hardware ticks per second

void* steer_control_thread(void* arg) {
    // args: arg[0] = regs pointer, arg[1] = shared_data pointer
    volatile unsigned int* regs = ((volatile unsigned int**)arg)[0];
    shared_data_t*         shared = ((shared_data_t**)arg)[1];

    while (!shared->valid) {
		usleep(100000);
	}
	printf("[STEER INIT 1] Steer control thread started.\n");
	int prev_zone = 0;

    while (1) {
        // 1) Wait for new UDP packet or timeout (3 seconds)
        struct timespec ts;
        clock_gettime(CLOCK_REALTIME, &ts);
        ts.tv_sec += 3;  // wait up to 3 seconds

        pthread_mutex_lock(&shared->cond_mutex);
        while (!shared->new_packet_ready) {
            int ret = pthread_cond_timedwait(
                          &shared->cond_packet_ready,
                          &shared->cond_mutex,
                          &ts);
            if (ret == ETIMEDOUT) {
                // Timeout: no new packet for 3 seconds
                shared->timeout_flag = true;
                break;
            }
        }
        if (shared->new_packet_ready) {
            // Received a new packet within timeout interval
            shared->new_packet_ready = false;
            shared->timeout_flag     = false;
        }
        pthread_mutex_unlock(&shared->cond_mutex);

        // 2) Read center_x under lock
        float x = 0.0f;
        pthread_mutex_lock(&shared->lock);
        if (shared->valid) {
            x = shared->center_x;
        }
        pthread_mutex_unlock(&shared->lock);

        int zone = prev_zone;
        if (!shared->timeout_flag) {
            // 3) Compute zone based on x
                 if (x >= 0.495f && x <= 0.505f) zone = 0;
            else if (x <  0.125f)            zone = -4;
            else if (x <  0.25f)             zone = -3;
            else if (x <  0.375f)            zone = -2;
            else if (x <  0.495f)            zone = -1;
            else if (x <= 0.625f)            zone = 1;
            else if (x <= 0.75f)             zone = 2;
            else if (x <= 0.875f)            zone = 3;
            else                             zone = 4;
        } else {
            // 4) Timeout: enter SEARCH MODE (keep previous zone or custom behavior)
            printf("[STEER-TIMEOUT] Search mode: using prev_zone = %d\n", prev_zone);
            // zone = prev_zone; // or implement a different search pattern
        }

        // 5) Decide command based on zone change direction
        unsigned int standby = 0, dir = 0, duty = 0;
        if (!shared->timeout_flag) {
            if (zone > prev_zone) {
                // zone increased -> turn RIGHT
                standby = 1;
                dir     = 0b01;
                duty    = FIXED_DUTY;
                printf("[STEER 1] zone increased: %d -> %d\n", prev_zone, zone);
            }
            else if (zone < prev_zone) {
                // zone decreased -> turn LEFT
                standby = 1;
                dir     = 0b10;
                duty    = FIXED_DUTY;
                printf("[STEER 1] zone decreased: %d -> %d\n", prev_zone, zone);
            }
            else {
                // no change -> stop
                standby = 0;
                duty    = 0;
                printf("[STEER 1] zone unchanged: %d\n", zone);
            }
        } else {
            // 5-2) Timeout search mode behavior (e.g., continuous slight movement)
			standby = 0;
            printf("[STEER 2] SEARCH MODE: standby=%u, dir=%u, duty=%u\n",
                   standby, dir, duty);
        }
        prev_zone = zone;

        // 6) Pack ticks and AXI register value
        unsigned int ticks = ((unsigned int)(FIXED_TIME_SEC * TICKS_PER_SEC)) & 0x1FFFFF;
        unsigned int val   = ((standby & 1) << 31)
                           | ((dir     & 3) << 29)
                           | ((duty    & 0xFF) << 21)
                           | ticks;

        // 7) Write to AXI register under lock
        printf("[STEER 3] WRITE reg0: standby=%u, dir=%u, duty=%u, ticks=0x%X\n",
               standby, dir, duty, ticks);

        pthread_mutex_lock(&shared->axi_mutex);
        regs[STEER_REG_ADDR] = val;
        pthread_mutex_unlock(&shared->axi_mutex);

        // 8) Throttle (10 ms)
        usleep(10000);
    }

    return NULL;
}


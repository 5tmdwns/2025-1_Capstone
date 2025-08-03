#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#include <time.h>
#include <errno.h>
#include <math.h>
#include "shared.h"

#define DRIVE_REG_ADDR   1
#define TARGET_DIST    250.0f   // Desired distance (cm)
#define DEAD_ZONE_LOW  230.0f
#define DEAD_ZONE_HIGH 270.0f
#define DUTY_MIN       120
#define DUTY_MAX       170
#define SCALE          1.75f

void* drive_control_thread(void* arg) {
    volatile unsigned int* regs = ((volatile unsigned int**)arg)[0];
    shared_data_t*         shared = ((shared_data_t**)arg)[1];

	while (!shared->valid) {
		usleep(100000);
	}
	printf("[INIT] Drive control thread started.\n");

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

        // 2) Read distance and compute dt
        time_t now = time(NULL);
        float dist = 0.0f;
        double dt  = 0.0;
        pthread_mutex_lock(&shared->lock);
        if (shared->valid) {
            dt   = difftime(now, shared->last_update_time);
            dist = shared->distance;
        }
        pthread_mutex_unlock(&shared->lock);

        unsigned int dirA    = 0, dirB = 0, duty = 0, standby = 0;
        int trigger           = 0;

        // 3) If timeout_flag or dt > 3.0, enter SEARCH MODE
        if (shared->timeout_flag || dt > 3.0) {
            standby = 1;
            duty    = DUTY_MAX;  // drive at maximum duty during search
            dirA    = 0b10;      // FORWARD as search pattern
            dirB    = 0b10;
            trigger = 1;
            printf("[DRIVE-TIMEOUT] SEARCH MODE: duty=%u, dt=%.1f\n", duty, dt);
        }
        else {
            // 4) Normal distance control
            if (dist >= DEAD_ZONE_LOW && dist <= DEAD_ZONE_HIGH) {
                // Within dead zone: stop
                standby = 0;
                duty    = 0;
                trigger = 1;
                printf("[DRIVE 1] Deadzone STOP\n");
            } else {
                float error = dist - TARGET_DIST;
                float d     = DUTY_MIN + fminf(fabsf(error) * SCALE,
                                               (float)(DUTY_MAX - DUTY_MIN));
                duty = (unsigned int)roundf(d);

                if (error < 0) {
                    // Too close: move BACKWARD
                    dirA = dirB = 0b01;
                } else {
                    dirA = dirB = 0b10;
                }
				standby = 1;
                trigger = 1;
                printf("[DRIVE 2] MOVE %s duty=%u error=%.2f\n",
                       (dirA == 0b10) ? "FORWARD" : "BACKWARD", duty, error);
            }
        }

        // 5) Pack bits into register value
        if (trigger) {
            unsigned int val = ((standby & 1) << 31)
                             | ((dirA    & 3) << 29)
                             | ((duty    & 0xFF) << 21)
                             | ((0 << 10)) // reserved 10 bits = 0
                             | ((duty    & 0xFF) << 2)
                             |  (dirB    & 3);

            printf("[DRIVE 5] WRITE reg1: standby=%u dirA=%u, duty=%u, dirB=%u\n",
                   standby, dirA, duty, dirB);

            pthread_mutex_lock(&shared->axi_mutex);
            regs[DRIVE_REG_ADDR] = val;
            pthread_mutex_unlock(&shared->axi_mutex);
        }

        // 6) Throttle (10 ms)
        usleep(10000);
    }

    return NULL;
}


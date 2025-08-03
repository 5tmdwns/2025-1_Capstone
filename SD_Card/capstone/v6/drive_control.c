#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#include <time.h>
#include <math.h>
#include "shared.h"   // defines shared_data_t

#define DRIVE_REG_ADDR     1
#define TARGET_DIST        250.0f
#define DEAD_ZONE_LOW      230.0f
#define DEAD_ZONE_HIGH     270.0f
#define DUTY_MIN           120
#define DUTY_MAX           170
#define SCALE              1.75f

void* drive_control_thread(void* arg) {
    volatile unsigned int* regs = ((volatile unsigned int**)arg)[0];
    shared_data_t* shared       = ((shared_data_t**)arg)[1];

    printf("[INIT] Drive control thread started.\n");

    static time_t timeout_start = 0;

    while (1) {
        // Wait for signal from UDP receive thread
        pthread_mutex_lock(&shared->cond_mutex);
        while (!shared->new_packet_ready)
            pthread_cond_wait(&shared->cond_packet_ready, &shared->cond_mutex);
        shared->new_packet_ready = false;
        pthread_mutex_unlock(&shared->cond_mutex);

        time_t now = time(NULL);

        double dt;
        float dist;
        pthread_mutex_lock(&shared->lock);
        dt = difftime(now, shared->last_update_time);
        dist = shared->distance;
        pthread_mutex_unlock(&shared->lock);

        unsigned int dirA = 0, dirB = 0, duty = 0, standby = 1;
        int trigger = 0;

        if (dt < 3.0) {
            timeout_start = 0;  // reset search timer

            float error = dist - TARGET_DIST;
            if (dist >= DEAD_ZONE_LOW && dist <= DEAD_ZONE_HIGH) {
                standby = 0; duty = 0; dirA = dirB = 0; trigger = 1;
                printf("[DRIVE 1] Deadzone STOP\n");
            } else {
                standby = 1;
                float d = DUTY_MIN + fminf(fabsf(error) * SCALE, (float)(DUTY_MAX - DUTY_MIN));
                duty = (unsigned int)roundf(d);

                if (error < 0) {
                    dirA = dirB = 0b01;  // BACKWARD
                } else {
                    dirA = dirB = 0b10;  // FORWARD
                }
                trigger = 1;
                printf("[DRIVE 2] MOVE %s duty=%d error=%.2f\n",
                       (dirA == 0b10) ? "FORWARD" : "BACKWARD", duty, error);
            }
        } else {
            if (timeout_start == 0) timeout_start = now;
            double since_to = difftime(now, timeout_start);

            if (since_to < 3.0) {
                standby = 0; duty = 0; trigger = 1;
                printf("[DRIVE 3] TIMEOUT STOP (%.1fs/3s)\n", since_to);
            } else {
                standby = 1; duty = DUTY_MAX; dirA = dirB = 0b10; trigger = 1;
                printf("[DRIVE 4] TIMEOUT SEARCH DRIVE\n");
            }
        }

        if (trigger) {
            unsigned int val = ((standby & 1) << 31)
                             | ((dirA & 3) << 29)
                             | ((duty & 0xFF) << 21)
                             | (0 << 10)
                             | ((duty & 0xFF) << 2)
                             | (dirB & 3);

			printf("[DRIVE 5] WRITE reg1: standby=%u dirA=%u, duty=%u, dirB=%u\n", standby, dirA, duty, dirB);

            pthread_mutex_lock(&shared->axi_mutex);
            regs[DRIVE_REG_ADDR] = val;
            pthread_mutex_unlock(&shared->axi_mutex);
        }

        // Optional delay (already synchronized with packet signal)
        usleep(10000);  // 10 ms
    }

    return NULL;
}


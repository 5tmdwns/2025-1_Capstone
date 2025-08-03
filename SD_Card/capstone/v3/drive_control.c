#include <unistd.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <pthread.h>
#include "shared.h"

#define DRIVE_REG_ADDR   1
#define TARGET_DIST      250.0f
#define DEAD_ZONE_LOW    230.0f
#define DEAD_ZONE_HIGH   270.0f
#define DUTY_MIN         100
#define DUTY_MAX         150
#define SCALE            1.75f

// Drive control thread:
// - Maintains target distance
// - Stops/holds in dead zone
// - Moves forward/backward outside dead zone
// - If no UDP data for >3s, perform in-place rotation
void* drive_control_thread(void* arg) {
    volatile unsigned int* regs = ((volatile unsigned int**)arg)[0];
    shared_data_t* shared     = ((shared_data_t**)arg)[1];

    printf("[INIT] drive_control_thread started.\n");
    if (!regs) {
        printf("[ERROR] regs pointer is NULL!\n");
        return NULL;
    }

    // Wait until first UDP packet arrives
    while (!shared->valid) {
        printf("[WAIT] waiting for valid UDP data...\n");
        usleep(100000);
    }
    printf("[START] Drive control enabled.\n");

    static float last_x = 0.5f;
    while (1) {
        time_t now = time(NULL);
        time_t last_update;

        // Read shared data
        pthread_mutex_lock(&shared->lock);
        float dist = shared->distance;
        last_update = shared->last_update_time;
        float x = shared->center_x;
        pthread_mutex_unlock(&shared->lock);

        // Compute error
        float error = dist - TARGET_DIST;
        unsigned int dirA=0, dirB=0, duty=0, standby=1;
        int trigger = 0;

        // Timeout: no data >3s?
        if (difftime(now, last_update) >= 3.0) {
            standby = 1; duty = 150; trigger = 1;
            if (last_x <= 0.1f) {
                dirA = 0b10; dirB = 0b01; printf("[TIMEOUT] Rotating LEFT\n");
            } else if (last_x >= 0.9f) {
                dirA = 0b01; dirB = 0b10; printf("[TIMEOUT] Rotating RIGHT\n");
            } else {
                dirA = dirB = 0; standby = 0; duty = 0;
                printf("[TIMEOUT] STOP\n");
            }
        } else {
            last_x = x;  // Update if data fresh

            // Dead zone?
            if (dist >= DEAD_ZONE_LOW && dist <= DEAD_ZONE_HIGH) {
                standby = 0; dirA=dirB=0; duty=0; trigger=1;
                printf("[HOLD] STOP (dead zone)\n");
            } else {
                // Compute duty and direction
                float d_f = DUTY_MIN + fmin(fabs(error)*SCALE, DUTY_MAX-DUTY_MIN);
                duty = (unsigned int)roundf(d_f);
                if (error < 0) dirA=dirB=0b01;
                else           dirA=dirB=0b10;
                trigger = 1;
                printf("[MOVE] dir=%s duty=%d err=%.2f\n",
                       (dirA==0b10)?"FORWARD":"BACKWARD", duty, error);
            }
        }

        // Write to AXI if triggered
        if (trigger) {
            unsigned int val = ((standby&1)<<31)
                             |((dirA&3)<<29)
                             |((duty&0xFF)<<21)
                             |(0<<10)
                             |((duty&0xFF)<<2)
                             |(dirB&3);
            pthread_mutex_lock(&shared->axi_mutex);
            regs[DRIVE_REG_ADDR] = val;
            pthread_mutex_unlock(&shared->axi_mutex);
        }

        usleep(10000);
    }
    return NULL;
}


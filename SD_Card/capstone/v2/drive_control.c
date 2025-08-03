#include <unistd.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include "shared.h"

#define DRIVE_REG_ADDR 1
#define TARGET_DIST 300.0f
#define DEAD_ZONE_LOW 290.0f
#define DEAD_ZONE_HIGH 310.0f
#define DUTY_MIN 80
#define DUTY_MAX 150
#define SCALE 1.75f

void* drive_control_thread(void* arg) {
    volatile unsigned int* regs = ((volatile unsigned int**)arg)[0];
    shared_data_t* shared = ((shared_data_t**)arg)[1];

    printf("[INIT] drive_control_thread started.\n");

    if (regs == NULL) {
        printf("[ERROR] regs pointer is NULL!\n");
    }

    // Wait for valid UDP data
    while (!shared->valid) {
        printf("[WAIT] waiting for valid UDP data...\n");
        usleep(100000);
    }

    printf("[START] valid UDP data received. Drive control enabled.\n");

    while (1) {
        pthread_mutex_lock(&shared->lock);
        float dist = shared->distance;
        pthread_mutex_unlock(&shared->lock);

        float error = dist - TARGET_DIST;
        unsigned int drive_dir_a = 0, drive_dir_b = 0;
        unsigned int duty = 0;
        unsigned int standby = 1;
        int trigger = 0;

        printf("[DEBUG] distance=%.2fcm, error=%.2f\n", dist, error);

        if (dist >= DEAD_ZONE_LOW && dist <= DEAD_ZONE_HIGH) {
            // Stop condition
            standby = 0;
            drive_dir_a = drive_dir_b = 0;
            duty = 0;
            trigger = 1;
            printf("[HOLD] in dead zone -> STOP (drive_stby=0)\n");
        } else {
            standby = 1;

            float duty_f = DUTY_MIN + fmin(fabs(error) * SCALE, DUTY_MAX - DUTY_MIN);
            duty = (unsigned int)roundf(duty_f);

            if (error < 0) {
                drive_dir_a = drive_dir_b = 0b01; // BACKWARD
            } else {
                drive_dir_a = drive_dir_b = 0b10; // FORWARD
            }

            trigger = 1;
            printf("[MOVE] dir=%s, duty=%d (error=%.2f)\n",
                   (drive_dir_a == 0b10) ? "FORWARD" : "BACKWARD", duty, error);
        }

        if (trigger) {
            unsigned int drive_val = ((standby & 0x1) << 31) |
                                     ((drive_dir_a & 0x3) << 29) |
                                     ((duty & 0xFF) << 21) |
                                     (0 << 10) |
                                     ((duty & 0xFF) << 2) |
                                     (drive_dir_b & 0x3);

            printf("[WRITE] drive_stby=%d, dir=%s, duty=%d\n",
                   standby,
                   (drive_dir_a == 0b10) ? "FORWARD" :
                   (drive_dir_a == 0b01) ? "BACKWARD" : "STOP",
                   duty);

            pthread_mutex_lock(&shared->axi_mutex);
            regs[DRIVE_REG_ADDR] = drive_val;
            pthread_mutex_unlock(&shared->axi_mutex);
        }

        usleep(10000); // 10ms
    }

    return NULL;
}


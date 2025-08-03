#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#include <time.h>
#include "shared.h"   // defines shared_data_t, cond_mutex, cond_packet_ready, new_packet_ready

#define STEER_REG_ADDR   0
#define FIXED_DUTY       185       // PWM duty for steering
#define FIXED_TIME_SEC   0.05f     // Time window (s)
#define TICKS_PER_SEC    781250    // Hardware ticks per second

void* steer_control_thread(void* arg) {
    // args: regs pointer, shared_data pointer
    volatile unsigned int* regs = ((volatile unsigned int**)arg)[0];
    shared_data_t* shared       = ((shared_data_t**)arg)[1];

    printf("[STEER INIT] Steer control thread started.\n");

    int prev_zone = 0;

    while (1) {
        // 1) wait for new UDP packet
        pthread_mutex_lock(&shared->cond_mutex);
        while (!shared->new_packet_ready)
            pthread_cond_wait(&shared->cond_packet_ready, &shared->cond_mutex);
        shared->new_packet_ready = 0;
        pthread_mutex_unlock(&shared->cond_mutex);

        // 2) read center_x under lock
        float x;
        pthread_mutex_lock(&shared->lock);
        x = shared->center_x;
        pthread_mutex_unlock(&shared->lock);

        // 3) determine zone
        int zone;
        if (x >= 0.495f && x <= 0.505f)        zone = 0;
        else if (x <  0.125f)                  zone = -4;
        else if (x <  0.25f)                   zone = -3;
        else if (x <  0.375f)                  zone = -2;
        else if (x <  0.495f)                  zone = -1;
        else if (x <= 0.625f)                  zone = 1;
        else if (x <= 0.75f)                   zone = 2;
        else if (x <= 0.875f)                  zone = 3;
        else                                   zone = 4;

        // 4) decide command based on zone change direction
        unsigned int standby = 0, dir = 0, duty = 0;
        if (zone > prev_zone) {
            // zone increased -> RIGHT
            standby = 1;
            dir     = 0b01;
            duty    = FIXED_DUTY;
			printf("[STEER 1] zone > prev_zone, ");
        }
        else if (zone < prev_zone) {
            // zone decreased -> LEFT
            standby = 1;
            dir     = 0b10;
            duty    = FIXED_DUTY;
			printf("[STEER 1] zone < prev_zone, ");
        }
        else {
            // no change -> stop
            standby = 0;
            duty    = 0;
			printf("[STEER 1] zone = prev_zone, ");
        }
        prev_zone = zone;
		printf("zone = %d, prev_zone = %d\n", zone, prev_zone);

        // 5) pack ticks and AXI value
        unsigned int ticks = ((unsigned int)(FIXED_TIME_SEC * TICKS_PER_SEC)) & 0x1FFFFF;
        unsigned int val = (standby << 31)
                         | ((dir & 0x3) << 29)
                         | ((duty & 0xFF) << 21)
                         | ticks;

        // 6) log & write
        printf("[STEER 2] WRITE reg0: standby=%u, dir=%u, duty=%u, ticks=0x%X\n", standby, dir, duty, ticks);
        pthread_mutex_lock(&shared->axi_mutex);
        regs[STEER_REG_ADDR] = val;
        pthread_mutex_unlock(&shared->axi_mutex);

        // 7) throttle
        usleep(10000);
    }
    return NULL;
}


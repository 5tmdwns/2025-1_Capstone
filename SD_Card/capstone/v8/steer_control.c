#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#include <time.h>
#include "shared.h"   // defines shared_data_t

#define STEER_REG_ADDR     0       // AXI register index for steer
#define FIXED_DUTY         185     // Fixed PWM duty for steering
#define FIXED_TIME_SEC     0.05f   // Fixed time window (s)
#define TICKS_PER_SEC      781250  // Hardware ticks per second

void* steer_control_thread(void* arg) {
    // arg[0] = regs pointer, arg[1] = shared_data pointer
    volatile unsigned int* regs = ((volatile unsigned int**)arg)[0];
    shared_data_t* shared       = ((shared_data_t**)arg)[1];

	int prev_zone = 0;

    // wait until first UDP packet arrives
    while (!shared->valid) {
        usleep(100000);
    }

    printf("[STEER INIT] UDP data valid, entering control loop.\n");

    while (1) {

        // wait for new UDP packet
        pthread_mutex_lock(&shared->cond_mutex);
        while (!shared->new_packet_ready)
            pthread_cond_wait(&shared->cond_packet_ready, &shared->cond_mutex);
        shared->new_packet_ready = 0;
        pthread_mutex_unlock(&shared->cond_mutex);

        float x;
        pthread_mutex_lock(&shared->lock);
        x = shared->center_x;
        pthread_mutex_unlock(&shared->lock);
		
		int zone;
        // Define steering zones based on x position
        if (x >= 0.495f && x <= 0.505f)		zone = 0;
		else if (x < 0.125f)				zone = -4;
		else if (x < 0.25f)					zone = -3;
        else if (x < 0.375f)				zone = -2;
        else if (x < 0.495f)				zone = -1;
        else if (x < 0.625f)				zone = 1;
        else if (x < 0.75f)					zone = 2;
        else if (x < 0.875f)				zone = 3;
        else								zone = 4;
        
		// decide command based on zone chage direction
		unsigned int standby = 0, dir = 0, duty = 0;
		if (zone > prev_zone) {
			// zone increased -> RIGHT
			standby = 1;
			dir = 0b01;
			duty = FIXED_DUTY;
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

        // pack & write steer command if needed
        unsigned int ticks = ((unsigned int)(FIXED_TIME_SEC * TICKS_PER_SEC) & 0x1FFFFF);
        unsigned int val = ((standby) << 31)
                         | ((dir & 0x3) << 29)
                         | ((duty & 0xFF) << 21)
                         | ticks;
		printf("[STEER 2] WRITE reg0: standby=%u, dir=%u, duty=%u, ticks=0x%X\n", standby, dir, duty, ticks);
        pthread_mutex_lock(&shared->axi_mutex);
        regs[STEER_REG_ADDR] = val;
        pthread_mutex_unlock(&shared->axi_mutex);

        usleep(10000);  // 10ms
    }

    return NULL;
}


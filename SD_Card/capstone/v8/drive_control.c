#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#include <time.h>
#include <errno.h>
#include <math.h>
#include <float.h>
#include "shared.h"    // defines shared_data_t, TARGET_DIST, DEAD_ZONE_LOW/HIGH, SCALE, etc.

#define DRIVE_REG_ADDR   1
#define TARGET_DIST      250.0f
#define DEAD_ZONE_LOW    230.0f
#define DEAD_ZONE_HIGH   270.0f
#define DUTY_MIN         120
#define DUTY_MAX         170
#define SCALE            1.75f

void* drive_control_thread(void* arg) {
    // arg[0] = regs pointer, arg[1] = shared_data pointer
    volatile unsigned int* regs = ((volatile unsigned int**)arg)[0];
    shared_data_t* shared       = ((shared_data_t**)arg)[1];

	while (!shared->valid) {
        usleep(100000);
    }
    printf("[DRIVE INIT] first UDP data received, entering control loop.\n");

    while (1) {

        time_t now = time(NULL);

        // 1) read last_update_time and distance atomically
        double dt;
        float  dist;
        pthread_mutex_lock(&shared->lock);
          dt   = difftime(now, shared->last_update_time);
          dist = shared->distance;
        pthread_mutex_unlock(&shared->lock);

		bool is_timeout = (dt >= 3.0);
		unsigned int dirA = 0, dirB = 0, duty = 0, standby = 0;
        
		if (!is_timeout) {
            
			// Wait for new UDP packet or 3-second timeout
            struct timespec ts;
            clock_gettime(CLOCK_REALTIME, &ts);
            ts.tv_sec += 3;  // set deadline = now + 3 seconds

            pthread_mutex_lock(&shared->cond_mutex);
            int ret = 0;
            // Wait until new_packet_ready == true or ETIMEDOUT
            while (!shared->new_packet_ready && ret != ETIMEDOUT) {
                ret = pthread_cond_timedwait(
                          &shared->cond_packet_ready,
                          &shared->cond_mutex,
                          &ts);
            }
            // If we woke up because of signal (ret == 0), consume the flag
            if (ret == 0 && shared->new_packet_ready) {
                shared->new_packet_ready = false;
            }
			// If we woke up because of timeout (ret == ETIMEDOUT), log that event
			else if (ret == ETIMEDOUT) {
				// Print a timestamp or dt, whichever you prefer
				struct timespec now_ts;
				clock_gettime(CLOCK_REALTIME, &now_ts);
				printf("[DRIVE TIMEOUT] pthread_cond_timedwait expired at %ld.%09ld\n", now_ts.tv_sec, now_ts.tv_nsec);
			}
            pthread_mutex_unlock(&shared->cond_mutex);

            // 3) After waking up, recalculate dt to confirm timeout state
            now = time(NULL);
            pthread_mutex_lock(&shared->lock);
            if (shared->valid) {
                dt = difftime(now, shared->last_update_time);
            }
            pthread_mutex_unlock(&shared->lock);
            is_timeout = (dt >= 3.0);
        }			

		if (!is_timeout) {

            float error = dist - TARGET_DIST;
            // Dead zone: hold position
            if (dist >= DEAD_ZONE_LOW && dist <= DEAD_ZONE_HIGH) {
                standby = 0; duty = 0;
                printf("[DRIVE 1] Deadzone STOP\n");
            } 
			else {
                // Proportional drive outside deadzone
                float d = DUTY_MIN + fminf(fabsf(error)*SCALE, (float)(DUTY_MAX - DUTY_MIN));
				duty = (unsigned int)roundf(d);

                if (error < 0) 
                    dirA = dirB = 0b01;  // BACKWARD
				else 
                    dirA = dirB = 0b10;  // FORWARD
				standby = 1;
                printf("[DRIVE 1] MOVE %s duty=%d error=%.2f\n",
                       (dirA==0b10)?"FORWARD":"BACKWARD", duty, error);
            }
		}
        else 
		{
            // --- TIMEOUT: first stamp when dt>=3s ---
            // ENTER SEARCH DRIVE MODE: both wheels forward
            standby = 1; duty = DUTY_MAX; dirA = dirB = 0b10;
            printf("[DRIVE 2] TIMEOUT SEARCH DRIVE (dt=%.2f seconds)\n", dt);
        }

        // 2) pack & write to AXI if needed
        unsigned int val = ((standby & 1) << 31)
                         | ((dirA & 3) << 29)
                         | ((duty & 0xFF) << 21)
                         | (0 << 10)
                         | ((duty & 0xFF) << 2)
                         |(dirB & 3);

        pthread_mutex_lock(&shared->axi_mutex);
		regs[DRIVE_REG_ADDR] = val;
        pthread_mutex_unlock(&shared->axi_mutex);

        // 10 ms cycle
        usleep(10000);
    }

    return NULL;
}


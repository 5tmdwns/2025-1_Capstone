#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#include <time.h>
#include <errno.h>
#include <math.h>
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

    // Wait until first valid UDP packet arrives
    while (!shared->valid) {
        usleep(100000);
    }
    printf("[DRIVE INIT] first UDP data received, entering control loop.\n");

    while (1) {
        // 1) Measure "now" and preliminary dt (time since last_update_time)
        time_t now = time(NULL);
        double dt;
        pthread_mutex_lock(&shared->lock);
          dt = difftime(now, shared->last_update_time);
        pthread_mutex_unlock(&shared->lock);

        bool is_search_mode = (dt >= 3.0);
        unsigned int dirA = 0, dirB = 0, duty = 0, standby = 0;
        int has_new_packet = 0;    // will be set if cond_signal arrived

        if (!is_search_mode) {
            // 2) Wait up to 3 seconds for a new UDP packet
            struct timespec ts;
            clock_gettime(CLOCK_REALTIME, &ts);
            ts.tv_sec += 3;  // deadline = now + 3 seconds

            pthread_mutex_lock(&shared->cond_mutex);
            int ret = 0;
            while (!shared->new_packet_ready && ret != ETIMEDOUT) {
                ret = pthread_cond_timedwait(
                          &shared->cond_packet_ready,
                          &shared->cond_mutex,
                          &ts);
            }
            if (ret == 0 && shared->new_packet_ready) {
                // A new packet arrived
                shared->new_packet_ready = 0;
                has_new_packet = 1;
            } else if (ret == ETIMEDOUT) {
                // Timed out waiting for new packet
                struct timespec now_ts;
                clock_gettime(CLOCK_REALTIME, &now_ts);
                printf("[DRIVE TIMEOUT WAIT] cond_timedwait expired at %ld.%09ld\n",
                       now_ts.tv_sec, now_ts.tv_nsec);
            }
            pthread_mutex_unlock(&shared->cond_mutex);

            now = time(NULL);
            pthread_mutex_lock(&shared->lock);
            dt = difftime(now, shared->last_update_time);
            float dist = shared->distance;
            pthread_mutex_unlock(&shared->lock);

            is_search_mode = (dt >= 3.0);

            if (!is_search_mode) {
                // A) dt < 3.0: we are still in the 3-second window
                if (has_new_packet) {
                    // â perform distance control using âdistâ just read
                    float error = dist - TARGET_DIST;
                    if (dist >= DEAD_ZONE_LOW && dist <= DEAD_ZONE_HIGH) {
                        // within dead zone: STOP
                        standby = 0;
                        duty    = 0;
                        printf("[DRIVE 1] Deadzone STOP (dist=%.2f)\n", dist);
                    } else {
                        // proportional control outside dead zone
                        float raw = DUTY_MIN
                                  + fminf(fabsf(error) * SCALE,
                                          (float)(DUTY_MAX - DUTY_MIN));
                        duty = (unsigned int)roundf(raw);
                        if (error < 0) {
                            dirA = dirB = 0b01;  // BACKWARD
                        } else {
                            dirA = dirB = 0b10;  // FORWARD
                        }
                        standby = 1;
                        printf("[DRIVE 1] MOVE %s duty=%u error=%.2f dist=%.2f\n",
                               (dirA == 0b10) ? "FORWARD" : "BACKWARD",
                               duty, error, dist);
                    }
                } else {
                    // B) dt < 3.0 but no new packet arrived immediate STOP
                    standby = 0;
                    duty    = 0;
                    printf("[DRIVE] No new packet, dt=%.2f < 3.0 STOP\n", dt);
                }
            }
            // else: dt >= 3.0, will fall through to Search Mode below
        }

        if (is_search_mode) {
            // 4) SEARCH MODE: dt >= 3.0 move forward at max duty
            standby = 1;
            duty    = DUTY_MAX;
            dirA = dirB = 0b10;  // FORWARD
            printf("[DRIVE 2] SEARCH DRIVE (dt=%.2f seconds)\n", dt);
        }

        // 5) Pack and write to AXI register
        unsigned int val = ((standby & 1) << 31)
                         | ((dirA   & 3) << 29)
                         | ((duty   & 0xFF) << 21)
                         | (0 << 10)
                         | ((duty   & 0xFF) << 2)
                         |  (dirB   & 3);
        pthread_mutex_lock(&shared->axi_mutex);
            regs[DRIVE_REG_ADDR] = val;
        pthread_mutex_unlock(&shared->axi_mutex);
        printf("[DRIVE 3] WRITE reg1: standby=%u, dirA=%u, dirB=%u, duty=%u\n",
               standby, dirA, dirB, duty);

        // 6) 10 ms cycle
        usleep(10000);
    }

    return NULL;
}


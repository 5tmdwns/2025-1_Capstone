#ifndef SHARED_H
#define SHARED_H

#include <pthread.h>
#include <time.h>
#include <stdbool.h>

typedef struct {
    float center_x;               // X position (0.0 ~ 1.0)
    float center_y;               // Y position
    float distance;               // Distance to object (cm)
    int   valid;                  // 1 after first UDP packet received
    time_t last_update_time;     // Last packet time

    pthread_mutex_t lock;        // Protects position and distance
    pthread_mutex_t axi_mutex;   // Protects AXI writes

    pthread_cond_t cond_packet_ready; // Signals new packet arrival
    pthread_mutex_t cond_mutex;       // Mutex for condition
    bool new_packet_ready;            // True when packet is available
} shared_data_t;

#endif // SHARED_H


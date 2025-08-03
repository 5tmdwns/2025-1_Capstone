#ifndef SHARED_H
#define SHARED_H

#include <pthread.h>
#include <time.h>
#include <stdbool.h>

// Shared data structure for UDP receive and control threads
typedef struct {
    float center_x;            // Normalized X center of bounding box (0.0 ~ 1.0)
    float center_y;            // Normalized Y center of bounding box (0.0 ~ 1.0)
    float distance;            // Measured distance to target (cm)
    int   valid;               // Set to 1 after first valid UDP packet
    time_t last_update_time;   // Timestamp of last UDP packet arrival
    pthread_mutex_t lock;      // Protects shared position & distance
    pthread_mutex_t axi_mutex; // Protects AXI4-Lite register writes
	
    pthread_cond_t cond_packet_ready; // Signals new packet arrival
    pthread_mutex_t cond_mutex;       // Mutex for condition
    bool new_packet_ready;            // True when packet is available
} shared_data_t;

#endif // SHARED_H


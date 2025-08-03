#ifndef SHARED_H
#define SHARED_H

#include <pthread.h>

// Shared data structure for UDP and control threads
typedef struct {
    float center_x;
    float center_y;
    float distance;
    int valid; // Set to 1 after first UDP packet is received
    pthread_mutex_t lock;       // For protecting shared data
    pthread_mutex_t axi_mutex;  // For protecting AXI4-Lite register writes
} shared_data_t;

#endif


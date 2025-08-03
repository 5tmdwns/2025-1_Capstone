#ifndef SHARED_H
#define SHARED_H

#include <pthread.h>

// Shared structure for UDP data and control flags
typedef struct {
    float center_x;
    float center_y;
    float distance;
    int valid; // Set to 1 after receiving valid UDP data
    pthread_mutex_t lock;       // Protects data access
    pthread_mutex_t axi_mutex;  // Protects AXI4-Lite register access
} shared_data_t;

#endif


#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <pthread.h>
#include <time.h>
#include "shared.h"

#define UIO_DEV   "/dev/uio0"
#define MAP_SIZE  0x1000  // 4 KB mapping region

extern void* udp_receive_thread(void* arg);
extern void* steer_control_thread(void* arg);
extern void* drive_control_thread(void* arg);

int main() {
    int uio_fd;
    void* map_base;
    volatile unsigned int* regs;
    shared_data_t* shared;

    pthread_t t_udp, t_steer, t_drive;
    void* thread_args[2];

    // 1) Open UIO device for AXI register access
    uio_fd = open(UIO_DEV, O_RDWR);
    if (uio_fd < 0) {
        perror("Failed to open UIO device");
        return 1;
    }

    // 2) Memory-map the UIO device to get a pointer to AXI registers
    map_base = mmap(NULL,
                    MAP_SIZE,
                    PROT_READ | PROT_WRITE,
                    MAP_SHARED,
                    uio_fd,
                    0);
    if (map_base == MAP_FAILED) {
        perror("mmap failed");
        close(uio_fd);
        return 1;
    }
    regs = (volatile unsigned int*)map_base;

    // 3) Allocate and initialize shared_data_t
    shared = (shared_data_t*)malloc(sizeof(shared_data_t));
    if (!shared) {
        perror("malloc failed");
        munmap(map_base, MAP_SIZE);
        close(uio_fd);
        return 1;
    }

    // Initialize positional data
    shared->center_x         = 0.0f;
    shared->center_y         = 0.0f;
    shared->distance         = 0.0f;
    shared->valid            = 0;
    shared->last_update_time = 0;
    shared->new_packet_ready = false;
    shared->timeout_flag     = false;

    // Initialize mutexes and condition variable
    pthread_mutex_init(&shared->lock,            NULL);
    pthread_mutex_init(&shared->axi_mutex,       NULL);
    pthread_mutex_init(&shared->cond_mutex,      NULL);
    pthread_cond_init(&shared->cond_packet_ready, NULL);

    // 4) Create UDP receive thread; pass pointer to shared
    if (pthread_create(&t_udp, NULL,
                       udp_receive_thread,
                       (void*)shared) != 0)
    {
        perror("Failed to create udp_receive_thread");
        goto cleanup;
    }

    // 5) Prepare argument array for steer and drive threads:
    //    thread_args[0] = regs pointer, thread_args[1] = shared pointer
    thread_args[0] = (void*)regs;
    thread_args[1] = (void*)shared;

    // 6) Create steer_control_thread
    if (pthread_create(&t_steer, NULL,
                       steer_control_thread,
                       (void*)thread_args) != 0)
    {
        perror("Failed to create steer_control_thread");
        goto cleanup;
    }

    // 7) Create drive_control_thread
    if (pthread_create(&t_drive, NULL,
                       drive_control_thread,
                       (void*)thread_args) != 0)
    {
        perror("Failed to create drive_control_thread");
        goto cleanup;
    }

    // 8) Wait for threads to finish (they run infinite loops)
    pthread_join(t_udp,   NULL);
    pthread_join(t_steer, NULL);
    pthread_join(t_drive, NULL);

cleanup:
    // 9) Cleanup resources (unreachable under normal infinite-loop operation)
    pthread_mutex_destroy(&shared->lock);
    pthread_mutex_destroy(&shared->axi_mutex);
    pthread_mutex_destroy(&shared->cond_mutex);
    pthread_cond_destroy(&shared->cond_packet_ready);

    free(shared);
    munmap(map_base, MAP_SIZE);
    close(uio_fd);
    return 0;
}


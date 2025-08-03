#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <pthread.h>
#include "shared.h"

// AXI4-Lite UIO device config
#define UIO_DEV "/dev/uio0"
#define MAP_SIZE 0x1000

extern void* udp_receive_thread(void* arg);
extern void* steer_control_thread(void* arg);
extern void* drive_control_thread(void* arg);

int main() {
    int uio_fd = open(UIO_DEV, O_RDWR);
    if (uio_fd < 0) {
        perror("Failed to open UIO device");
        return 1;
    }

    void* map_base = mmap(NULL, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, uio_fd, 0);
    if (map_base == MAP_FAILED) {
        perror("mmap failed");
        close(uio_fd);
        return 1;
    }

    volatile unsigned int* regs = (volatile unsigned int*)map_base;

    // Initialize shared structure
    shared_data_t* shared = malloc(sizeof(shared_data_t));
    shared->center_x = 0.0f;
    shared->center_y = 0.0f;
    shared->distance = 0.0f;
    shared->valid = 0;
    pthread_mutex_init(&shared->lock, NULL);
    pthread_mutex_init(&shared->axi_mutex, NULL);

    // Start threads
    pthread_t t_udp, t_steer, t_drive;
    void* args[] = { (void*)regs, (void*)shared };

    if (pthread_create(&t_udp, NULL, udp_receive_thread, shared) != 0) {
        perror("Failed to create udp_receive_thread");
        return 1;
    }

    if (pthread_create(&t_steer, NULL, steer_control_thread, args) != 0) {
        perror("Failed to create steer_control_thread");
        return 1;
    }

    if (pthread_create(&t_drive, NULL, drive_control_thread, args) != 0) {
        perror("Failed to create drive_control_thread");
        return 1;
    }

    // Join threads
    pthread_join(t_udp, NULL);
    pthread_join(t_steer, NULL);
    pthread_join(t_drive, NULL);

    // Clean up
    munmap(map_base, MAP_SIZE);
    close(uio_fd);
    free(shared);

    return 0;
}


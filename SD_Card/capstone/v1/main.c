#include <stdio.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <pthread.h>
#include "shared.h"

extern void* udp_receive_thread(void*);
extern void* steer_control_thread(void*);
extern void* drive_control_thread(void*);

#define MAP_SIZE 0x1000

int main() {
    shared_data_t shared = {0};
    pthread_mutex_init(&shared.lock, NULL);
    pthread_mutex_init(&shared.axi_mutex, NULL);

    int uio_fd = open("/dev/uio0", O_RDWR);
    volatile unsigned int* regs = mmap(NULL, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, uio_fd, 0);

    pthread_t t_recv, t_steer, t_drive;
    pthread_create(&t_recv, NULL, udp_receive_thread, &shared);

    void* args[] = {(void*)regs, &shared};
    pthread_create(&t_steer, NULL, steer_control_thread, args);
    pthread_create(&t_drive, NULL, drive_control_thread, args);

    pthread_join(t_recv, NULL);
    pthread_join(t_steer, NULL);
    pthread_join(t_drive, NULL);

    munmap((void*)regs, MAP_SIZE);
    close(uio_fd);
    return 0;
}


#include <stdio.h>
#include <stdint.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>

#define UIO_DEV "/dev/uio0"
#define MAP_SIZE 0x1000
#define REG_STEER 0x00

int main() {
    int uio_fd = open(UIO_DEV, O_RDWR);
    if (uio_fd < 0) {
        perror("UIO open failed");
        return 1;
    }

    volatile uint32_t *regs = mmap(NULL, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, uio_fd, 0);
    if (regs == MAP_FAILED) {
        perror("mmap failed");
        close(uio_fd);
        return 1;
    }

    uint8_t dir, duty;
    float time_sec;

    printf("Enter steer_dir (10=LEFT, 01=RIGHT): ");
    scanf("%hhu", &dir);
    printf("Enter steer_duty (0~255): ");
    scanf("%hhu", &duty);
    printf("Enter steer_time in seconds (max 2.68s): ");
    scanf("%f", &time_sec);

    uint32_t steer_time = (uint32_t)(time_sec * 781250.0);
    if (steer_time > 2097151) steer_time = 2097151;

    uint32_t value = (1 << 31) | ((dir & 0x3) << 29) | ((duty & 0xFF) << 21) | (steer_time & 0x1FFFFF);
    regs[REG_STEER / 4] = value;

    printf("Wrote to slv_reg0: 0x%08X\n", value);

    munmap((void *)regs, MAP_SIZE);
    close(uio_fd);
    return 0;
}


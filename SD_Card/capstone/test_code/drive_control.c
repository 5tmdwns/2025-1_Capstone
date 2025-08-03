#include <stdio.h>
#include <stdint.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>

#define UIO_DEV "/dev/uio0"
#define MAP_SIZE 0x1000
#define REG_DRIVE 0x04

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

    uint8_t dir_a, duty_a, dir_b, duty_b;

    printf("Enter drive_dir_a (10=FORWARD, 01=BACKWARD): ");
    scanf("%hhu", &dir_a);
    printf("Enter drive_duty_a (0~255): ");
    scanf("%hhu", &duty_a);
    printf("Enter drive_dir_b (10=FORWARD, 01=BACKWARD): ");
    scanf("%hhu", &dir_b);
    printf("Enter drive_duty_b (0~255): ");
    scanf("%hhu", &duty_b);

    uint32_t value = (1 << 31) | ((dir_a & 0x3) << 29) | ((duty_a & 0xFF) << 21) |
                     ((duty_b & 0xFF) << 2) | (dir_b & 0x3);
    regs[REG_DRIVE / 4] = value;

    printf("Wrote to slv_reg1: 0x%08X\n", value);

    munmap((void *)regs, MAP_SIZE);
    close(uio_fd);
    return 0;
}


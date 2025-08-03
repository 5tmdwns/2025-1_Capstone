#include <stdio.h>
#include <stdint.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>

#define UIO_DEV "/dev/uio0"
#define MAP_SIZE 0x1000
#define REG_STEER 0x00
#define REG_DRIVE 0x04

// Convert seconds to 21-bit tick count (781250 ticks/sec)
uint32_t compute_steer_time(float seconds) {
    uint32_t ticks = (uint32_t)(seconds * 781250.0);
    return (ticks > 0x1FFFFF) ? 0x1FFFFF : ticks;
}

int main() {
    int uio_fd = open(UIO_DEV, O_RDWR);
    if (uio_fd < 0) {
        perror("UIO open failed");
        return 1;
    }

    volatile uint32_t* regs = mmap(NULL, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, uio_fd, 0);
    if (regs == MAP_FAILED) {
        perror("mmap failed");
        close(uio_fd);
        return 1;
    }

    uint8_t steer_dir, drive_dir;
    uint8_t steer_duty = 100;
    uint8_t drive_duty = 100;
    float steer_times[] = {0.658f, 1.316f, 1.316f, 1.316f};

    for (int i = 0; i < 4; i++) {
        if (i % 2 == 0) {
            steer_dir = 0b01; // RIGHT
            drive_dir = 0b10; // FORWARD
            printf("[%d] FORWARD + RIGHT, steer_time=%.3f\n", i + 1, steer_times[i]);
        } else {
            steer_dir = 0b10; // LEFT
            drive_dir = 0b01; // BACKWARD
            printf("[%d] BACKWARD + LEFT, steer_time=%.3f\n", i + 1, steer_times[i]);
        }

        uint32_t steer_time = compute_steer_time(steer_times[i]);

        // Format: [31]stby [30:29]dir [28:21]duty [20:0]time
        uint32_t steer_val = (1 << 31) |
                             ((steer_dir & 0x3) << 29) |
                             ((steer_duty & 0xFF) << 21) |
                             (steer_time & 0x1FFFFF);

        // Format: [31]stby [30:29]dirA [28:21]dutyA [20:10]0 [9:2]dutyB [1:0]dirB
        uint32_t drive_val = (1 << 31) |
                             ((drive_dir & 0x3) << 29) |
                             ((drive_duty & 0xFF) << 21) |
                             (0 << 10) |
                             ((drive_duty & 0xFF) << 2) |
                             (drive_dir & 0x3);

        regs[REG_STEER / 4] = steer_val;
        regs[REG_DRIVE / 4] = drive_val;

        usleep(5 * 1000000); // 5 seconds
    }

    // Final STOP: clear all values
    regs[REG_STEER / 4] = 0x00000000;
    regs[REG_DRIVE / 4] = 0x00000000;
    printf("[STOP] steer_stby=0, drive_stby=0, all values cleared to 0\n");

    munmap((void*)regs, MAP_SIZE);
    close(uio_fd);
    return 0;
}


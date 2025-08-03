#include "xparameters.h"
#include "xil_io.h"
#include <stdio.h>
#include <sleep.h>

#define MOTOR_CONTROLLER_BASEADDR XPAR_TOP_0_BASEADDR

#define REG_STEER_PWM_OFFSET      0x00
#define REG_STEER_DIR_OFFSET      0x04
#define REG_STEER_TIME_OFFSET     0x08
#define REG_STEER_TRIGGER_OFFSET  0x0C

int main() {
    u32 mode;
    u32 pwm_value;
    u32 dir_value;
    u32 time_value;
    u32 trigger_value;

    printf("Start Steer Read/Write Mode Test\n");

    while (1) {
        printf("Select Mode: 1. Write  2. Read\n");
        scanf("%d", &mode);

        if (mode == 1) {
            // === Write Mode ===
            printf("Enter PWM Value (0~255): \n");
            scanf("%d", &pwm_value);

            printf("Enter DIR Value (0: Left, 1: Right): \n");
            scanf("%d", &dir_value);

            printf("Enter TIME Value (e.g., 1000000): \n");
            scanf("%d", &time_value);

            printf("Enter TRIGGER (1: Start, 0: No Trigger): \n");
            scanf("%d", &trigger_value);

            // Write values
            Xil_Out32(MOTOR_CONTROLLER_BASEADDR + REG_STEER_PWM_OFFSET, pwm_value);
            Xil_Out32(MOTOR_CONTROLLER_BASEADDR + REG_STEER_DIR_OFFSET, dir_value);
            Xil_Out32(MOTOR_CONTROLLER_BASEADDR + REG_STEER_TIME_OFFSET, time_value);

            if (trigger_value == 1) {
                Xil_Out32(MOTOR_CONTROLLER_BASEADDR + REG_STEER_TRIGGER_OFFSET, 1);
                usleep(10);
                Xil_Out32(MOTOR_CONTROLLER_BASEADDR + REG_STEER_TRIGGER_OFFSET, 0);
            }

            printf("Write Complete: PWM=%d, DIR=%d, TIME=%d\n\r", pwm_value, dir_value, time_value);

        } else if (mode == 2) {
            // === Read Mode ===
            pwm_value = Xil_In32(MOTOR_CONTROLLER_BASEADDR + REG_STEER_PWM_OFFSET);
            dir_value = Xil_In32(MOTOR_CONTROLLER_BASEADDR + REG_STEER_DIR_OFFSET);
            time_value = Xil_In32(MOTOR_CONTROLLER_BASEADDR + REG_STEER_TIME_OFFSET);

            printf("Current Values --> PWM: %d, DIR: %d, TIME: %d\n", pwm_value, dir_value, time_value);
        } else {
            printf("Invalid Mode. Please select 1 or 2.\n");
        }
    }

    return 0;
}


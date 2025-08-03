#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <arpa/inet.h>
#include <pthread.h>
#include <time.h>
#include "shared.h"

#define PORT     5005
#define BUF_SIZE 128

/**
 * UDP receive thread:
 *  - Listens on PORT for UDP datagrams
 *  - Expects ASCII messages "X,Y,Distance"
 *  - Parses three floats separated by commas
 *  - Updates shared->center_x, center_y, distance, last_update_time, valid
 */
void* udp_receive_thread(void* arg) {
    shared_data_t* shared = (shared_data_t*)arg;
    int sockfd;
    struct sockaddr_in server_addr, client_addr;
    char buffer[BUF_SIZE];
    socklen_t addr_len = sizeof(client_addr);

    // 1) Create UDP socket
    sockfd = socket(AF_INET, SOCK_DGRAM, 0);
    if (sockfd < 0) {
        perror("socket creation failed");
        exit(1);
    }

    // 2) Bind socket to all local interfaces on PORT
    memset(&server_addr, 0, sizeof(server_addr));
    server_addr.sin_family      = AF_INET;
    server_addr.sin_addr.s_addr = INADDR_ANY;
    server_addr.sin_port        = htons(PORT);
    if (bind(sockfd, (struct sockaddr*)&server_addr, sizeof(server_addr)) < 0) {
        perror("bind failed");
        close(sockfd);
        return NULL;
    }

    printf("[INIT] UDP receiver started on port %d\n", PORT);

    int frame = 0;
    while (1) {
        // 3) Receive one datagram (blocking)
        int len = recvfrom(sockfd, buffer, BUF_SIZE - 1, 0,
                           (struct sockaddr*)&client_addr, &addr_len);
        if (len < 0) {
            perror("recvfrom failed");
            continue;
        }
        buffer[len] = '\0';  // Null-terminate the received data

        // 4) Parse three floats from comma-separated input
        float x, y, distance;
        int parsed = sscanf(buffer, " %f , %f , %f ",
                            &x, &y, &distance);

        if (parsed == 3) {
            // 5) Update shared data under lock
            pthread_mutex_lock(&shared->lock);
            shared->center_x         = x;
            shared->center_y         = y;
            shared->distance         = distance;
            shared->last_update_time = time(NULL);  // reset timeout
            if (!shared->valid) {
                shared->valid = 1;
                printf("[START] First valid data received. Threads can now operate.\n");
            }
            pthread_mutex_unlock(&shared->lock);

            // 6) Debug print
            printf("[RECV] Frame %03d: X=%.4f, Y=%.4f, D=%.2f\n",
                   frame++, x, y, distance);
        } else {
            // Warn on any non-matching format
            printf("[WARN] Invalid format: '%s'\n", buffer);
        }

        // 7) Throttle to ~100Hz
        usleep(10000);
    }

    // never reached, but for completeness:
    close(sockfd);
    return NULL;
}


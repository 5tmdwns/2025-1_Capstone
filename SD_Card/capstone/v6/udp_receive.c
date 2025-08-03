#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <arpa/inet.h>
#include <pthread.h>
#include <time.h>
#include "shared.h"

#define PORT 5005
#define BUF_SIZE 128

void* udp_receive_thread(void* arg) {
    shared_data_t* shared = (shared_data_t*)arg;
    int sockfd;
    struct sockaddr_in server_addr, client_addr;
    char buffer[BUF_SIZE];
    socklen_t addr_len = sizeof(client_addr);

    sockfd = socket(AF_INET, SOCK_DGRAM, 0);
    if (sockfd < 0) {
        perror("socket creation failed");
        exit(1);
    }

    memset(&server_addr, 0, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = INADDR_ANY;
    server_addr.sin_port = htons(PORT);

    if (bind(sockfd, (struct sockaddr*)&server_addr, sizeof(server_addr)) < 0) {
        perror("bind failed");
        close(sockfd);
        return NULL;
    }

    printf("[INIT] UDP receiver started on port %d\n", PORT);

    while (1) {
        int len = recvfrom(sockfd, buffer, BUF_SIZE - 1, 0,
                           (struct sockaddr*)&client_addr, &addr_len);
        if (len < 0) {
            perror("recvfrom failed");
            continue;
        }

        buffer[len] = '\0';

        float x, y, distance;
        int parsed = sscanf(buffer, " %f , %f , %f ", &x, &y, &distance);

        if (parsed == 3) {
            pthread_mutex_lock(&shared->lock);
            shared->center_x = x;
            shared->center_y = y;
            shared->distance = distance;
            shared->last_update_time = time(NULL);
            if (!shared->valid) {
                shared->valid = 1;
                printf("[UDP START] First valid data received. Threads can now operate.\n");
            }
            pthread_mutex_unlock(&shared->lock);

            pthread_mutex_lock(&shared->cond_mutex);
            shared->new_packet_ready = true;
            pthread_cond_broadcast(&shared->cond_packet_ready);
            pthread_mutex_unlock(&shared->cond_mutex);

            printf("[UDP] X=%.4f, Y=%.4f, D=%.2f\n", x, y, distance);
        } else {
            printf("[UDP WARN] Invalid format: '%s'\n", buffer);
        }

        usleep(10000);
    }

    close(sockfd);
    return NULL;
}


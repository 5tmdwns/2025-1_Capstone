#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <stdlib.h>
#include "shared.h"

#define MAX_UDP_LEN 64

void* udp_receive_thread(void* arg) {
    shared_data_t* shared = (shared_data_t*)arg;
    int sockfd = socket(AF_INET, SOCK_DGRAM, 0);
    struct sockaddr_in addr;
    socklen_t addrlen = sizeof(addr);
    char buffer[MAX_UDP_LEN];

    struct sockaddr_in my_addr = {
        .sin_family = AF_INET,
        .sin_addr.s_addr = INADDR_ANY,
        .sin_port = htons(5005)
    };

    bind(sockfd, (struct sockaddr*)&my_addr, sizeof(my_addr));

    while (1) {
        ssize_t received = recvfrom(sockfd, buffer, sizeof(buffer) - 1, 0,
                                    (struct sockaddr*)&addr, &addrlen);
        if (received > 0) {
            buffer[received] = '\0';

            char* token = strtok(buffer, ",");
            if (!token) continue;
            float x = atof(token);

            token = strtok(NULL, ",");
            if (!token) continue;
            float y = atof(token);

            token = strtok(NULL, ",");
            if (!token) continue;
            float d = atof(token);

            printf("Received: X=%.4f, Y=%.4f, Distance=%.2fcm\n", x, y, d);

            pthread_mutex_lock(&shared->lock);
            shared->center_x = x;
            shared->center_y = y;
            shared->distance = d;
            pthread_mutex_unlock(&shared->lock);
        }
    }

    close(sockfd);
    return NULL;
}


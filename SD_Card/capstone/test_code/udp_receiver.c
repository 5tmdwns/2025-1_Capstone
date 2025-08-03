#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <stdlib.h>

#define PORT 5005
#define BUF_SIZE 128

int main() {
    int sockfd;
    struct sockaddr_in addr, sender_addr;
    socklen_t addrlen = sizeof(sender_addr);
    char buffer[BUF_SIZE];  // receive raw string
    int last_frame = -1;

    sockfd = socket(AF_INET, SOCK_DGRAM, 0);

    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = INADDR_ANY;
    addr.sin_port = htons(PORT);

    bind(sockfd, (struct sockaddr*)&addr, sizeof(addr));

    printf("Receiving UDP frames with string data...\n");

    while (1) {
        ssize_t received = recvfrom(sockfd, buffer, BUF_SIZE - 1, 0,
                                    (struct sockaddr*)&sender_addr, &addrlen);
        if (received > 0) {
            buffer[received] = '\0';  // null terminate

            float x, y, distance;
            int frame;

            // Try to parse the string assuming format: "x,y,distance,frame"
            int parsed = sscanf(buffer, "%s,%s,%s", &x, &y, &distance);

            if (parsed == 3) {
                printf("X=%0.4f Y=%0.4f D=%0.4f", x, y, distance);
            } else {
                printf("Failed to parse: %s\n", buffer);
            }
        } else {
            printf("recvfrom failed.\n");
        }
    }

    close(sockfd);
    return 0;
}


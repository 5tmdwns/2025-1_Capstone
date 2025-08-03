# Target binary name
TARGET = object_following

# Source files
SRCS = main.c udp_receive.c steer_control.c drive_control.c

# Header files directory (if needed)
INCLUDES = -I.

# Compiler and flags
CC = gcc
CFLAGS = -Wall -O2 $(INCLUDES) -lpthread -lm

# Default target
all: $(TARGET)

$(TARGET): $(SRCS)
	$(CC) -o $@ $^ $(CFLAGS)

# Clean build artifacts
clean:
	rm -f $(TARGET)


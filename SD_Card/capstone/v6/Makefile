# Compiler and flags
CC       := gcc
CFLAGS   := -Wall -pthread
LDFLAGS  := -lm

# Source files
SRCS     := main.c udp_receive.c steer_control.c drive_control.c

# Object directory and object files
OBJDIR   := build
OBJS     := $(SRCS:%.c=$(OBJDIR)/%.o)

# Final executable
TARGET   := object_following

# Default target
all: $(TARGET)

# Link step: use object files from build/
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

# Build rule: compile each .c into build/%.o
# Ensure build/ exists before compiling
$(OBJDIR)/%.o: %.c shared.h | $(OBJDIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Create OBJDIR if missing
$(OBJDIR):
	mkdir -p $(OBJDIR)

# Clean up everything
clean:
	rm -rf $(OBJDIR) $(TARGET)

.PHONY: all clean

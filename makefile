# Compiler and flags
CC = gcc
CFLAGS = -Wall -Werror -fPIC -I.
LDFLAGS = -shared

# Directories
BUILD_DIR = build
OUT_DIR = out

# File names
TARGET = $(OUT_DIR)/libway-win.so
SRCS = way-win.c
# Prepend the build directory path to each object file name
OBJS = $(addprefix $(BUILD_DIR)/,$(SRCS:.c=.o))

# Default target
all: $(TARGET)

# Rule to link the shared library
$(TARGET): $(OBJS)
	@mkdir -p $(@D)
	$(CC) $(LDFLAGS) -o $@ $^

# Pattern rule to compile source files into object files in the build directory
$(BUILD_DIR)/%.o: %.c
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up all build artifacts and directories
clean:
	rm -rf $(BUILD_DIR) $(OUT_DIR)

.PHONY: all clean

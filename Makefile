CC ?= cc
CFLAGS ?= -std=c11 -Wall -Wextra -Wpedantic -O2
LDFLAGS ?=


XCB_LIBS := $(shell pkg-config --libs xcb)
XCB_CFLAGS := $(shell pkg-config --cflags xcb)


SRC := src/main.c
OBJ := $(SRC:.c=.o)
BIN := wm


all: $(BIN)


$(BIN): $(OBJ)
$(CC) $(LDFLAGS) -o $@ $^ $(XCB_LIBS)


%.o: %.c
$(CC) $(CFLAGS) $(XCB_CFLAGS) -c $< -o $@


clean:
rm -f $(OBJ) $(BIN)


.PHONY: all clean

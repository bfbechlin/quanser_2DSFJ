TARGET=pid
SRCS=$(TARGET).c

CC=gcc
CFLAGS=-Wall -O2

VPATH=src

all: $(TARGET)

$(TARGET):$(SRCS:.c=.o)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm *.o $(TARGET)

TARGET=test
SRCS=$(TARGET).c

FLAGS=-Wall -g -MMD
INCLUDE=-I. -I../include
LIBDIR=-L../lib
LIBS=-lQ2DSFJ

CC=i586-poky-linux-gcc
CFLAGS=$(FLAGS) $(INCLUDE)
LDFLAGS=$(LIBDIR) $(LIBS)

all: $(TARGET)

$(TARGET): $(SRCS:.c=.o) ../lib/libQ2DSFJ.a
	$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

-include $(SRCS:.c=.d)

clean:
	rm -f *~ *.bak *.o *.d

distclean: clean
	rm -f $(TARGET)

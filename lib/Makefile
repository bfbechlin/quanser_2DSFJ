TARGET=libQ2DSFJ.a
SRCS=ioutils.c LS7366R.c Q2DSFJ.c pid.c

GALILEO=galileo1
USER=root

FLAGS=-O2 -Wall -MMD
INCLUDE=-I. -I../include
LIBDIR=
LIBS=

CC=$(CROSS_COMPILE)gcc
CCAR=$(CROSS_COMPILE)ar
CFLAGS=$(FLAGS) $(INCLUDE)
LDFLAGS=$(LIBDIR) $(LIBS)
CCARFLAGS=-crvs

all: $(TARGET)

$(TARGET): $(SRCS:.c=.o)
	$(CCAR) $(CCARFLAGS) $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

.PHONY: init_script

init_script: init_libQ2DSFJ
	scp $^ $(USER)@$(GALILEO):/etc/init.d/

-include $(SRCS:.c=.d)

clean:
	rm -f *~ *.bak *.o *.d

distclean: clean
	rm -f $(TARGET)

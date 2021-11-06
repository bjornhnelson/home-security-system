ifeq ($(CC),)
	CC = $(CROSS_COMPILE)gcc
endif
ifeq ($CFLAGS),)
	CFLAGS = -g -Wall -Werror
endif
ifeq ($(INCLUDES),)
	INCLUDES = -I/
endif

all: hello

hello.o: hello.c
	$(CC) $(CFLAGS) -c hello.c

clean:
	rm -f *.o
	rm -f hello
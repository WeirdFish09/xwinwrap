CC = gcc
CFLAGS= -g -Wall
INCLUDE = -L /usr/lib/x86_64-linux-gnu
LIBS = -lX11 -lXext -lXrender
DESTDIR = '/usr/local/bin'

all:
	${CC} xwinwrap.c ${CFLAGS} ${INCLUDE} ${LIBS} -o xwinwrap

install:
	install xwinwrap ${DESTDIR}

uninstall:
	rm -f '/usr/local/bin/xwinwrap'

clean:
	rm -f xwinwrap

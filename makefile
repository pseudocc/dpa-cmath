PREFIX=/usr/local
CC=gcc

LIBDIR=$(PREFIX)/lib

all: libadvmath.so

math.o: math.c
	$(CC) -c $^ -fpic -o $@

libadvmath.so: math.o
	$(CC) -shared -o $@ $^

install: libadvmath.so
	install -d $(LIBDIR)
	install libadvmath.so $(LIBDIR)/libadvmath.so.1

clean:
	rm -f libadvmath.so math.o

.PHONY: install clean

PREFIX=/usr/local
CC=gcc

BINDIR=$(PREFIX)/bin

all: libadvmath.so

math.o: math.c
	$(CC) -c $^ -fpic -o $@

libadvmath.so: math.o
	$(CC) -shared -o $@ $^

install: libadvmath.so
	install -d $(BINDIR)
	install $^ $(BINDIR)/libadvmath.so

clean:
	rm -f libadvmath.so math.o

.PHONY: install clean

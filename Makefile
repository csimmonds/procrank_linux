#
# Copyright (C) 2015,2018 by Chris Simmonds <chris@2net.co.uk>
#
# If cross-compiling, CC must point to your cross compiler, for example:
# make CC=arm-linux-gnueabihf-gcc


DESTDIR ?= /
BINDIR ?= usr/bin
LOCAL_CFLAGS ?= -Wall
PROGRAM = procrank

$(PROGRAM): $(PROGRAM).c libpagemap/libpagemap.a
	$(CC) $(CFLAGS) $(LOCAL_CFLAGS) $(LDFLAGS) $(PROGRAM).c -Ilibpagemap/include -Llibpagemap -lpagemap -o $@

libpagemap/libpagemap.a:
	make -C libpagemap

clean:
	rm -f $(PROGRAM)
	make -C libpagemap clean

install:
	install -d $(DESTDIR)/$(BINDIR)
	install -m 0755 $(PROGRAM) $(DESTDIR)/$(BINDIR)

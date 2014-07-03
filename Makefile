# Makefile for snoopy



CC=gcc
CFLAGS=-g -O2 -DHAVE_CONFIG_H
LIBS=-ldl
LDFLAGS= -ldl 
prefix=/usr/local
exec_prefix=${prefix}
LIBDIR=${exec_prefix}/lib
SNOOPY_EXCLUDE_PREFIX=/usr/local/snoopy/bin
SNOOPY_EXTERNAL_FILTER=no
SNOOPY_FILTER_COMMAND=/usr/local/snoopy/bin/snoopy-filter.sh
SNOOPY_FILTER_COMMAND_DIR=`dirname /usr/local/snoopy/bin/snoopy-filter.sh`


all: snoopy.so detect

snoopy.so:  snoopy.c snoopy.h config.h
	$(CC) $(CFLAGS) -shared -O3 -fomit-frame-pointer -fPIC snoopy.c -osnoopy.so $(LDFLAGS)

detect: detect.c
	$(CC) detect.c -odetect $(LDFLAGS)



install: all
ifeq ($(SNOOPY_EXTERNAL_FILTER), yes)
	install -m 755 -d $(SNOOPY_EXCLUDE_PREFIX)
	install -m 755 -d $(SNOOPY_FILTER_COMMAND_DIR)
	if test ! -e $(SNOOPY_EXCLUDE_PREFIX)/sh; then \
	    ln -s /bin/sh $(SNOOPY_EXCLUDE_PREFIX)/sh; \
	fi
	if test ! -e $(SNOOPY_EXCLUDE_PREFIX)/bash; then \
	    ln -s /bin/bash $(SNOOPY_EXCLUDE_PREFIX)/bash; \
	fi
	if test ! -e $(SNOOPY_EXCLUDE_PREFIX)/cat; then \
	    ln -s /usr/bin/cat $(SNOOPY_EXCLUDE_PREFIX)/cat; \
	fi
	if test ! -e $(SNOOPY_EXCLUDE_PREFIX)/cut; then \
	    ln -s /usr/bin/cut $(SNOOPY_EXCLUDE_PREFIX)/cut; \
	fi
	if test ! -e $(SNOOPY_EXCLUDE_PREFIX)/echo; then \
	    ln -s /usr/bin/echo $(SNOOPY_EXCLUDE_PREFIX)/echo; \
	fi
	if test ! -e $(SNOOPY_EXCLUDE_PREFIX)/getent; then \
	    ln -s /usr/bin/getent $(SNOOPY_EXCLUDE_PREFIX)/getent; \
	fi
	if test ! -e $(SNOOPY_EXCLUDE_PREFIX)/grep; then \
	    ln -s /usr/bin/grep $(SNOOPY_EXCLUDE_PREFIX)/grep; \
	fi
	if test ! -e $(SNOOPY_EXCLUDE_PREFIX)/sed; then \
	    ln -s /usr/bin/sed $(SNOOPY_EXCLUDE_PREFIX)/sed; \
	fi
	if test ! -e $(SNOOPY_FILTER_COMMAND); then \
	    install -m 755 snoopy-filter.sh $(SNOOPY_FILTER_COMMAND); \
	fi
	@echo
	@echo Your external filter is installed here:
	@echo $(SNOOPY_FILTER_COMMAND)
	@echo
endif
	install -m 755 -d $(DESTDIR)$(LIBDIR)
	install -m 755 snoopy.so $(DESTDIR)$(LIBDIR)/snoopy.so
	@echo -e "\nSnoopy shared library installed in $(DESTDIR)$(LIBDIR)."
	@echo -e "Run 'make enable' to actually enable snoopy logging.\n"



enable:
	./enable.sh $(DESTDIR)$(LIBDIR)



clean:
	rm -f detect snoopy.so
	rm -f snoopy-filter.sh
	rm -f contrib/sles/snoopy.spec

distclean: clean
	rm -f autoscan.log config.h config.log config.status
	rm -rf autom4te.cache
	rm -f Makefile

realclean: distclean
	rm -f configure configure.scan

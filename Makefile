ifeq ($(prefix),)
	prefix=/usr/local
endif
ifeq ($(shell which $(CC)),)
	CC=gcc
endif
all:
	$(CC) $(CFLAGS) -o charseq charseq.c
	strip -S charseq
install:
	if [ ! -d "$(DESTDIR)$(prefix)/bin" ]; then mkdir -p $(DESTDIR)$(prefix)/bin; fi
	install -m755 charseq $(DESTDIR)$(prefix)/bin
clean:
	rm charseq

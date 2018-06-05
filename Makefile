BIN ?= shellutil
PREFIX ?= /usr/local

install:
	cp shellutil.sh $(PREFIX)/bin/$(BIN)
	chmod +x $(PREFIX)/bin/$(BIN)

uninstall:
	rm -f $(PREFIX)/bin/$(BIN)
	
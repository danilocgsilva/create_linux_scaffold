
BIN ?= UTILITYNAME
PREFIX ?= /usr/local

install:
	cp UTILITYNAME.sh $(PREFIX)/bin/$(BIN)
	chmod +x $(PREFIX)/bin/$(BIN)

uninstall:
	rm -f $(PREFIX)/bin/$(BIN)
	
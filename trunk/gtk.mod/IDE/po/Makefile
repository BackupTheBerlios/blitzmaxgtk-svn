# Things for intltool
top_srcdir=..

pkgname=gtkmaxide

all: update mo

update:	../IDE.bmx ../ide.glade
	EXTRACT=. ./intltool-update de

mo:	de.po
	msgfmt -c -v -o de.gmo de.po

install:
	cp de.gmo /usr/share/locale/de/LC_MESSAGES/$(pkgname).mo

clean:
	rm -f de.gmo

uninstall:
	rm -f /usr/share/locale/de/LC_MESSAGES/$(pkgname).mo

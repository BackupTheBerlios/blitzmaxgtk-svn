# Things for intltool
top_srcdir=..

all: update mo

update:	../IDE.bmx ../ide.glade
	EXTRACT=. ./intltool-update de

mo:	de.po
	msgfmt -c -v -o de.mo de.po

install:
	mkdir -p ../lang/de/LC_MESSAGES
	cp /usr/share/locale/locale.alias /usr/share/locale/all_languages ../lang
	cp de.mo ../lang/de/LC_MESSAGES/gtkbmxide.mo

clean:
	rm -f *.mo

uninstall:
	rm -rf ../lang

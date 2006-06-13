pkgname=gtkmaxide

all:

install:
	cp -f ../IDE /usr/bin/$(pkgname)
	mkdir -p /usr/share/$(pkgname)
	cp -f ../ide.glade /usr/share/$(pkgname)
	cp -f ../idelogo.png /usr/share/pixmaps/$(pkgname).png
	cp -f ../idelogo.xcf /usr/share/pixmaps/$(pkgname).xcf
	cp -f ../idelogo.png /usr/share/$(pkgname)
	cp -f ../$(pkgname).desktop /usr/share/applications

uninstall:
	rm -rf /usr/share/$(pkgname)
	rm -f /usr/share/pixmaps/$(pkgname).png
	rm -f /usr/share/pixmaps/$(pkgname).xcf
	rm -f /usr/bin/$(pkgname)
	rm -f /usr/share/applications/$(pkgname).desktop

clean:


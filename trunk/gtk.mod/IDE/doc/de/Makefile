pkgname=bmxide
xmlname=bmxide-de.xml
omfname=bmxide-de.omf

all:
	scrollkeeper-preinstall -n file:/usr/share/help/gnome/$(pkgname)/$(xmlname) $(omfname).in $(omfname)

install: all
	mkdir -p /usr/share/omf/$(pkgname)
	cp -f $(omfname) /usr/share/omf/$(pkgname)
	mkdir -p /usr/share/help/gnome/$(pkgname)
	cp -f $(xmlname) /usr/share/help/gnome/$(pkgname)
	cp -f legal.xml /usr/share/help/gnome/$(pkgname)
	scrollkeeper-update -n -v -o /usr/share/omf/$(pkgname)

clean:
	rm -f $(xmlname)

uninstall: all
	rm -rf /usr/share/omf/$(pkgname)
	rm -rf /usr/share/help/gnome/$(pkgname)
	scrollkeeper-update -n -v

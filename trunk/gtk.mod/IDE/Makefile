all:
	make all-recursive

all-recursive:
	make -Cpo all
	make -Cdoc all
	make -Cdata all

clean:
	make clean-recursive

clean-recursive:
	make -Cpo clean
	make -Cdoc clean
	make -Cdata clean

uninstall:
	make uninstall-recursive

uninstall-recursive:
	make -Cpo uninstall
	make -Cdoc uninstall
	make -Cdata uninstall

install:
	make install-recursive

install-recursive:
	make -Cpo install
	make -Cdoc install
	make -Cdata install

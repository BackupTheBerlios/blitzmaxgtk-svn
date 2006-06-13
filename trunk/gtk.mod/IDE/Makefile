all:
	make all-recursive

all-recursive:
	make -Cpo all
	make -Cdoc all

clean:
	make clean-recursive

clean-recursive:
	make -Cpo clean
	make -Cdoc clean

uninstall:
	make uninstall-recursive

uninstall-recursive:
	make -Cpo uninstall
	make -Cdoc uninstall

install:
	make install-recursive

install-recursive:
	make -Cpo install
	make -Cdoc install

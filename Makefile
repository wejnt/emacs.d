

all: init clean build

ifeq ($(wildcard platform.el),)
	cp -r $(shell pwd)/platform/platform.el.macos $(shell pwd)/platform.el
endif

init:
	git submodule init
	git submodule update --init --recursive

build:
	echo "=============building emacs-libvterm================="
	cd $(shell pwd)/lisp/site/emacs-libvterm && \
	mkdir build && cd build && \
	cmake .. &&  make
	echo "=============build emacs-libvterm finished==========="
	cd $(shell pwd)/lisp/site/org-mode && make
	cd $(shell pwd)/lisp/site/magit && make
	cd $(shell pwd)/lisp/site/flycheck && make
	cd $(shell pwd)/lisp/site/rust-mode && make build
	cd $(shell pwd)/lisp/site/use-package && make

clean:
	rm -rf $(shell pwd)/lisp/site/emacs-libvterm/build
	cd $(shell pwd)/lisp/site/org-mode && make clean
	cd $(shell pwd)/lisp/site/magit && make clean
	cd $(shell pwd)/lisp/site/flycheck && make clean
	cd $(shell pwd)/lisp/site/rust-mode && make clean
	cd $(shell pwd)/lisp/site/use-package && make clean

revert:
	rm -rf $(shell pwd)/platform.el
	cp -r $(shell pwd)/platform/platform.el.macos $(shell pwd)/platform.el


build:
	true

install:
	mkdir -p $(DESTDIR)/etc/apt/trusted.gpg.d/
	mkdir -p $(DESTDIR)/etc/apt/sources.list.d/
	cp -rv gxde.gpg $(DESTDIR)/etc/apt/trusted.gpg.d/gxde.gpg
	cp -rv gxde.list $(DESTDIR)/etc/apt/sources.list.d/gxde.list
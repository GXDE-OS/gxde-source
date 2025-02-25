build:
	true

install:
	mkdir -p $(DESTDIR)/etc/apt/trusted.gpg.d/
	mkdir -p $(DESTDIR)/etc/apt/sources.list.d/
	cp -rv gxde.gpg $(DESTDIR)/etc/apt/trusted.gpg.d/gxde.gpg
	if [ "$(GXDE_CODENAME)" = "zhuangzhuang" ]; then cp -rv gxde-lizhi.list $(DESTDIR)/etc/apt/sources.list.d/gxde.list ; fi
	if [ "$(GXDE_CODENAME)" = "lizhi" ]; then cp -rv gxde-lizhi.list $(DESTDIR)/etc/apt/sources.list.d/gxde.list ; fi
	if [ "$(GXDE_CODENAME)" = "tianlu" ]; then cp -rv gxde-bixie.list $(DESTDIR)/etc/apt/sources.list.d/gxde.list ; fi
	if [ "$(GXDE_CODENAME)" = "bixie" ]; then cp -rv gxde-bixie.list $(DESTDIR)/etc/apt/sources.list.d/gxde.list ; fi
	if [ "$(GXDE_CODENAME)" = "meimei" ]; then cp -rv gxde-meimei.list $(DESTDIR)/etc/apt/sources.list.d/gxde.list ; fi
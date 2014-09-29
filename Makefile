
all:
		echo 'pass'

install:
		mkdir -p $(DESTDIR)/usr/lib/mailinabox/conf
		mkdir -p $(DESTDIR)/usr/lib/mailinabox/management
		mkdir -p $(DESTDIR)/usr/lib/mailinabox/setup
		mkdir -p $(DESTDIR)/usr/lib/mailinabox/tools
		cp -r conf/* $(DESTDIR)/usr/lib/mailinabox/conf/
		cp -r management/* $(DESTDIR)/usr/lib/mailinabox/management/
		cp -r setup/* $(DESTDIR)/usr/lib/mailinabox/setup/
		cp -r tools/* $(DESTDIR)/usr/lib/mailinabox/tools/
		rm -rf $(DESTDIR)/usr/lib/mailinabox/management/__pycache__
		rm -rf $(DESTDIR)/usr/lib/mailinabox/setup/__pycache__
		rm -rf $(DESTDIR)/usr/lib/mailinabox/tools/__pycache__
		mkdir -p $(DESTDIR)/usr/bin/
		ln -s ../lib/mailinabox/setup/start.sh $(DESTDIR)/usr/bin/mailinabox


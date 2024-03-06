# Makefile

include config.mk

install:
	@echo "Installing gitclone script..."
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 gitclone $(DESTDIR)$(BINDIR)
	@echo "Installing man page..."
	install -d $(DESTDIR)$(MANDIR)
	install -m 644 gitclone.1 $(DESTDIR)$(MANDIR)
	@echo "Installation complete."

uninstall:
	@echo "Uninstalling gitclone script..."
	rm -f $(DESTDIR)$(BINDIR)/gitclone
	@echo "Removing man page..."
	rm -f $(DESTDIR)$(MANDIR)/gitclone.1
	@echo "Uninstallation complete."

.PHONY: install uninstall

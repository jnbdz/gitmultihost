include config.mk

install:
	@echo "Installing gitmultihost script..."
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 gitmultihost $(DESTDIR)$(BINDIR)
	@echo "Installing man page..."
	install -d $(DESTDIR)$(MANDIR)
	install -m 644 gitmultihost.1 $(DESTDIR)$(MANDIR)
	@echo "Installation complete."

uninstall:
	@echo "Uninstalling gitmultihost script..."
	rm -f $(DESTDIR)$(BINDIR)/gitmultihost
	@echo "Removing man page..."
	rm -f $(DESTDIR)$(MANDIR)/gitmultihost.1
	@echo "Uninstallation complete."

.PHONY: install uninstall

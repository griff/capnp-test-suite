
.PHONY: build build-reading build-defaults build-upgrades build-bad clean clean-reading clean-defaults clean-upgrades clean-bad
build:   build-reading build-defaults build-upgrades build-bad
clean:   clean-reading clean-defaults clean-upgrades clean-bad

build-reading:
	$(MAKE) -C "1. Reading all datatypes" build
clean-reading:
	$(MAKE) -C "1. Reading all datatypes" clean

build-defaults:
	$(MAKE) -C "2. Defaults" build
clean-defaults:
	$(MAKE) -C "2. Defaults" clean

build-upgrades:
	$(MAKE) -C "3. Schema upgrades" build
clean-upgrades:
	$(MAKE) -C "3. Schema upgrades" clean

build-bad:
	$(MAKE) -C "4. Bad messages" build
clean-bad:
	$(MAKE) -C "4. Bad messages" clean
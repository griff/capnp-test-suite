
.PHONY: build build-canonical build-backwards build-cpp-allowed clean clean-canonical clean-backwards clean-cpp-allowed
build:  build-canonical build-backwards build-cpp-allowed
clean:  clean-canonical clean-backwards clean-cpp-allowed

build-canonical:
	$(MAKE) -C "1. Canonical" build
clean-canonical:
	$(MAKE) -C "1. Canonical" clean

build-backwards:
	$(MAKE) -C "2. Backwards compatible" build
clean-backwards:
	$(MAKE) -C "2. Backwards compatible" clean

build-cpp-allowed:
	$(MAKE) -C "3. C++ allowed upgrades" build
clean-cpp-allowed:
	$(MAKE) -C "3. C++ allowed upgrades" clean

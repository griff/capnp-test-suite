
.PHONY: build build-valid build-invalid clean clean-valid clean-invalid
build:  build-valid build-invalid
clean: clean-valid clean-invalid

build-valid:
	$(MAKE) -C "1. Valid" build
clean-valid:
	$(MAKE) -C "1. Valid" clean
build-invalid:
	$(MAKE) -C "2. Invalid" build
clean-invalid:
	$(MAKE) -C "2. Invalid" clean

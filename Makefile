LOCAL_DIR := $(shell pwd)
VERSION := $(shell $(LOCAL_DIR)/pgroup --version)
MAKE := make

.PHONY: install tests

all: tests

install: tests
	@install -m 555 pgroup /usr/local/bin

tests:
	@PATH="$(shell readlink -f "$(LOCAL_DIR)"):$(PATH)" unittests/testsuite

clean:

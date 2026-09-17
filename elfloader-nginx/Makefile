UK_ROOT ?= $(PWD)/workdir/unikraft
UK_BUILD ?= $(PWD)/workdir/build
UK_APP ?= $(PWD)
LIBS_BASE = $(PWD)/workdir/libs
UK_LIBS ?= $(PWD):$(LIBS_BASE)/libelf:$(LIBS_BASE)/lwip:$(PWD)/workdir/apps/elfloader

.PHONY: all

all:
	@$(MAKE) -C $(UK_ROOT) L=$(UK_LIBS) A=$(UK_APP) O=$(UK_BUILD)

$(MAKECMDGOALS):
	@$(MAKE) -C $(UK_ROOT) L=$(UK_LIBS) A=$(UK_APP) O=$(UK_BUILD) $(MAKECMDGOALS)

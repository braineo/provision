TARGET ?= localhost
TAGS ?= 

# Colors
end:=$(shell echo -e "\033[0m")
black=$(shell echo -e "\033[0;30m")
blackb=$(shell echo -e "\033[1;30m")
white=$(shell echo -e "\033[0;37m")
whiteb=$(shell echo -e "\033[1;37m")
red:=$(shell echo -e "\033[0;31m")
redb=$(shell echo -e "\033[1;31m")
green=$(shell echo -e "\033[0;32m")
greenb=$(shell echo -e "\033[1;32m")
yellow=$(shell echo -e "\033[0;33m")
yellowb=$(shell echo -e "\033[1;33m")
blue=$(shell echo -e "\033[0;34m")
blueb=x$(shell echo -e "\033[1;34m")
purple=$(shell echo -e "\033[0;35m")
purpleb=$(shell echo -e "\033[1;35m")
lightblue=$(shell echo -e "\033[0;36m")
lightblueb=$(shell echo -e "\033[1;36m")

.PHONY: all
all: help

.PHONY: install
install:
	@./bin/provision --target ${TARGET} --tags=${TAGS}

define help_string

${blue}Provision with basic necessary development environment${end}
${whiteb}Usage:${end}
  make install ${green}- install to localhost${end}
  make TARGET=user@hostname TAGS=font install ${green}- install with options${end}
  make DEBUG=1 install ${green}- turn on verbose message${end}
endef
export help_string
.PHONY: help
help:
	@echo "$$help_string"

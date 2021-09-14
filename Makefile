TEMPLATE=TCA.xctemplate
BASE=$(HOME)/Library/Developer/Xcode/Templates/Architecture

all: install

install:
	mkdir -p "$(BASE)"
	rm -rf "$(BASE)/$(TEMPLATE)"
	cp -R ./$(TEMPLATE) "$(BASE)"

uninstall:
	rm -rf "$(BASE)/$(TEMPLATE)"

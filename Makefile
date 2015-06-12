.PHONY: all bin default dotfiles install

all: bin dotfiles

default: install

install: all

bin:
	# add aliases for things in bin
	for file in $(shell find $(CURDIR)/bin -type f -not -name "*-backlight"); do \
		f=$$(basename $$file); \
		sudo ln -sf $$file /usr/local/bin/$$f; \
	done

dotfiles:
	# add aliases for dotfiles
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".gitignore" -not -name ".git" -not -name ".*.swp"); do \
		f=$$(basename $$file); \
		ln -sfn $$file $(HOME)/$$f; \
	done

# Use default template with `make TEMPLATE=default`
TEMPLATE ?= eisvogel

SRCS := $(wildcard *.md)

PDFS := $(SRCS:.md=.pdf)

all: $(PDFS)

%.pdf: %.md Makefile
	pandoc -f markdown -t latex --template $(TEMPLATE) $< -o $@

clean:
	rm -f $(PDFS)

.PHONY: all clean

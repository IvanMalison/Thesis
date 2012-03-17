.phony: clean

SOURCES = $(wildcard *.tex)

TARGETS = $(patsubst %.tex, %.pdf, $(SOURCES))

all: $(TARGETS)

%.pdf: %.tex
	pdflatex $<
	open $@

clean:
	rm $(TARGETS)
MKDN = $(wildcard *.md)
HTML = $(MKDN:.md=.html)
PDF = $(MKDN:.md=.pdf)
DOCX = $(MKDN:.md=.docx)
FLAGS = -s # smart quotes
FLAGS += --katex
FLAGS += -t html5
#FLAGS += --mathjax
FLAGS += --css ftap.css
#FLAGS += --section-divs
#FLAGS += -H header.html
#FLAGS += -A footer.html
#FLAGS += -f markdown+tex_math_single_backslash+auto_identifiers

$(HTML): %.html: %.md
	pandoc $(FLAGS) $< -o $@

$(PDF): %.pdf: %.md
	pandoc $< -o $@

$(DOCX): %.docx: %.md
	pandoc $< -o $@

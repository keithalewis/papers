MKDN = $(wildcard *.md)
HTML = $(MKDN:.md=.html)
PDF = $(MKDN:.md=.pdf)
DOCX = $(MKDN:.md=.docx)
FLAGS = -s # smart quotes
FLAGS += --katex
FLAGS += -t html5
#FLAGS += --mathjax
FLAGS += --css arxiv.css
FLAGS += --filter pandoc-citeproc --metadata link-citations=true
#FLAGS += --bibliography "$*.json"

#FLAGS += --section-divs
#FLAGS += -H header.html
#FLAGS += -A footer.html
#FLAGS += -f markdown+tex_math_single_backslash+auto_identifiers
DATE = $(shell date "+%B %e, %Y")

$(HTML): %.html: %.md
	pandoc $(FLAGS) $< -o $@

$(PDF): %.pdf: %.md
	pandoc -M date="$(DATE)" $< -o $@

$(DOCX): %.docx: %.md
	pandoc $< -o $@

pptx: ep_slides.md
	pandoc --katex -s $< -t $@ -o ep_slides.pptx

TYPE = slidy 

$(TYPE): ep_slides.md
	pandoc --katex -s $< -t $@ -o ep_slides.html

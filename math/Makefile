MKDN = $(wildcard *.md)
HTML = $(MKDN:.md=.html)
PDF = $(MKDN:.md=.pdf)
DOCX = $(MKDN:.md=.docx)
KATEX=https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/
#FLAGS = -s # smart quotes
#FLAGS += --katex
FLAGS += -t html5
FLAGS += --mathjax
FLAGS += --css ftap.css
#FLAGS += --section-divs
FLAGS += -H header.html
#FLAGS += -H katex.html
#FLAGS += -A footer.html
#FLAGS += -f markdown+tex_math_single_backslash+auto_identifiers

$(HTML): %.html: %.md
	pandoc -t html5 -s --css capm.css  --katex=$(KATEX) $< -o $@

$(PDF): %.pdf: %.md
	pandoc -H ../header.tex -M date="$(shell date "+%B %e, %Y")" $< -o $@

$(DOCX): %.docx: %.md
	pandoc -H header.tex $< -o $@

rsync:
	rcp capm.html capm.css kal@web626.webfaction.com:webapps/kalx/capm

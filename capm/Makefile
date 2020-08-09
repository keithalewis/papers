MKDN = $(wildcard *.md)
HTML = $(MKDN:.md=.html)
#HTML = grassmann.html
PDF = $(MKDN:.md=.pdf)
DOCX = $(MKDN:.md=.docx)
KATEX=https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/
#FLAGS = -s # smart quotes
#FLAGS += --katex
FLAGS += -t html5
FLAGS += --mathjax
FLAGS += --css capm.css
#FLAGS += --section-divs
FLAGS += -H header.html
#FLAGS += -H katex.html
#FLAGS += -A footer.html
#FLAGS += -f markdown+tex_math_single_backslash+auto_identifiers
BIB = --bibliography epst.json

$(HTML): %.html: %.md capm.css
	pandoc $(BIB) --reference-location=block -t html5+auto_identifiers -s --css capm.css  --katex=$(KATEX) $< -o $@

$(PDF): %.pdf: %.md
	pandoc $(BIB) -H ../header.tex $< -o $@

#pandoc -H ../header.tex -M date="$(shell date "+%B %e, %Y")" $< -o $@

#	pandoc --pdf-engine=xelatex -H ../header.tex -M date="$(shell date "+%B %e, %Y")" $< -o $@

$(DOCX): %.docx: %.md
	pandoc -H header.tex $< -o $@

rsync:
	rcp epst.html capmc.html capm.html capm.css kal@web626.webfaction.com:webapps/kalx/capm

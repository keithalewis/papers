MKDN = $(wildcard *.md)
HTML = $(MKDN:.md=.html)
#HTML = grassmann.html
PDF = $(MKDN:.md=.pdf)
TEX = $(MKDN:.md=.tex)
DOCX = $(MKDN:.md=.docx)

KATEX=https://cdn.jsdelivr.net/npm/katex@0.12.0/dist/

FLAGS  = -f markdown+definition_lists
FLAGS += -t html5
FLAGS += -s # smart quotes
FLAGS += --katex=$(KATEX)
FLAGS += --css capm.css
FLAGS += --toc
#FLAGS += -B katex.tex
#FLAGS += --reference-location=block
#FLAGS += -t html5
#FLAGS += --mathjax
#FLAGS += --css capm.css
#FLAGS += --section-divs
#FLAGS += -H header.html
#FLAGS += -H katex.html
#FLAGS += -A footer.html
#FLAGS += -f markdown+tex_math_single_backslash+auto_identifiers+definition_lists
FLAGS += --filter pandoc-citeproc --metadata link-citations=true
FLAGS += --bibliography "$*.json"
DATE = $(shell date "+%B %e, %Y")

$(HTML): %.html: %.md capm.css
	pandoc $(FLAGS) $< -o $@

$(PDF): %.pdf: %.md
	pandoc -M date="$(DATE)" -H ../header.tex --filter pandoc-citeproc --metadata link-citations=true --bibliography epst.json $< -o $@

$(TEX): %.tex: %.md
	pandoc -M date="$(DATE)" -H ../header.tex --filter pandoc-citeproc --metadata link-citations=true --bibliography epst.json $< -o $@

$(DOCX): %.docx: %.md
	pandoc -H ../header.tex $(FLAGS) $< -o $@

rsync:
	rcp epst.html capmc.html capm.html capm.css kal@web626.webfaction.com:webapps/kalx/capm

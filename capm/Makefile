MKDN = $(wildcard *.md)
HTML = $(MKDN:.md=.html)
#HTML = grassmann.html
PDF = $(MKDN:.md=.pdf)
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
#FLAGS += --bibliography epst.json

$(HTML): %.html: %.md capm.css
	pandoc $(FLAGS) $< -o $@

$(PDF): %.pdf: %.md
	pandoc -H ../header.tex $< -o $@

#pandoc --pdf-engine=xelatex -H ../header.tex -M date="$(shell date "+%B %e, %Y")" $< -o $@

#	pandoc --pdf-engine=xelatex -H ../header.tex -M date="$(shell date "+%B %e, %Y")" $< -o $@

$(DOCX): %.docx: %.md
	pandoc -H header.tex $< -o $@

rsync:
	rcp epst.html capmc.html capm.html capm.css kal@web626.webfaction.com:webapps/kalx/capm

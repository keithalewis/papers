MKDN = $(wildcard *.md)
HTML = $(MKDN:.md=.html)
PDF = $(MKDN:.md=.pdf)
FLAGS = -s # smart quotes
FLAGS += --mathjax
FLAGS += --css ftap.css
FLAGS += --section-divs
FLAGS += -H header.html
FLAGS += -A footer.html
FLAGS += -f markdown+tex_math_single_backslash+auto_identifiers

all: ftap.html

$(HTML): %.html: %.md
	pandoc $(FLAGS) $< -o $@

$(PDF): %.pdf: %.md
	pandoc -H header.tex $(FLAGS) $< -o $@

rsync: $(HTML)
	rsync $(HTML) ftap.css kal@web69.webfaction.com:webapps/kalx/html

clean:
	rm -f $(HTML)

ftap.html: ftap.md ftap.css header.html footer.html view.js

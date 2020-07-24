MKDN = $(wildcard *.md)
HTML = $(MKDN:.md=.html)
#HTML = grassmann.html
PDF = $(MKDN:.md=.pdf)
DOCX = $(MKDN:.md=.docx)
#FLAGS = -s # smart quotes
KATEX=https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/
FLAGS += --katex=$(KATEX)
FLAGS += -t html5
#FLAGS += --mathjax
FLAGS += --css ftap.css
#FLAGS += --css generic.css
#FLAGS += --section-divs
FLAGS += -H header.html
#FLAGS += -H katex.html
#FLAGS += -A footer.html
#FLAGS += -f markdown+tex_math_single_backslash+auto_identifiers

um_slides: um_slides.md
	pandoc --strip-comments --css um_slides.css -s -f markdown -t revealjs --katex -V revealjs-url=https://revealjs.com um_slides.md -o um_slides.html

umsync:
	rcp um_slides.html um_slides.css kal@web626.webfaction.com:webapps/kalx/

cme:
	rcp kal@web626.webfaction.com:cme/stleqt/stleqt.20171109.tgz .

$(HTML): %.html: %.md
	pandoc $(FLAGS) $< -o $@

$(PDF): %.pdf: %.md
	pandoc -H header.tex -M date="$(shell date "+%B %e, %Y")" $< -o $@

$(DOCX): %.docx: %.md
	pandoc -H header.tex $< -o $@

rsync: $(HTML)
	rsync $(HTML) ftap.css kal@web626.webfaction.com:webapps/kalx/html

lsync:
	rsync kal@web626.webfaction.com:webapps/kalx/ftapirl.html ftapi.html

resume:
	rsync resume.md kal@web626.webfaction.com:webapps/kalx/resume2.html

clean:
	rm -f $(HTML)

FTAP = ftap.md ftap.css header.html footer.html view.js ftap.pdf

ftap.html: ftap.md ftap.css header.html footer.html view.js

copy: $(FTAP)
	cp $(FTAP) ftap.html ftapi.html /e/

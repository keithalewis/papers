
%.html: %.md
	pandoc -s --katex --css alg.css $< -o $@

rcp:
	rcp ssa.html alg.css kal@web626.webfaction.com:webapps/kalx/

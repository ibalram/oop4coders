# -*- makefile -*-

FILE = *.tex

CMD = xelatex -synctex=1 -interaction=nonstopmode oop4coders.tex

allmake: $(FILE)

	$(CMD) #run xelatx 
	bibtex oop4coders.aux
	makeindex oop4coders
	$(CMD) #run xelatx 
	
	
clean: 
	rm -f *.synctex.gz *.log *.aux *.blg *.out *.qry *.nav *.snm *.toc *.lof *.lot *.glo *.acn *.ist *.up* *.i*

clear: clean
	rm -f *.pdf *.bbl
#	clean

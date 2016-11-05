TEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error

.PHONY: all view

all: DummitFooteSolutions.pdf

view:
	    gnome-open main.pdf
clean: 
	rm *.aux *.log

DummitFooteSolutions.pdf : main.tex preamble.tex
	    $(TEX) main.tex
		makeindex main

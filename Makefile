latex: template.pdf
	mv template.pdf pdf/template.pdf
	rm -f *.dvi
	
all: template.pdf
	mv template.pdf pdf/template.pdf
	rm -f *.dvi
	
template.pdf: template.dvi
	dvipdfmx $<

template.dvi: template.tex
	latex $<
	latex $<

clean:
	rm -f *.pdf
	rm -f *.dvi

PDF_DIR := pdf

.PHONY: all clean

all: $(PDF_DIR)/template.pdf

$(PDF_DIR)/template.pdf: src/template.tex
	mkdir -p $(PDF_DIR)
	TEXINPUTS=src//: xelatex -shell-escape -output-directory=$(PDF_DIR) src/template.tex && \
	TEXINPUTS=src//: xelatex -shell-escape -output-directory=$(PDF_DIR) src/template.tex

clean:
	rm -f $(PDF_DIR)/*.pdf $(PDF_DIR)/*.aux $(PDF_DIR)/*.log $(PDF_DIR)/*.toc

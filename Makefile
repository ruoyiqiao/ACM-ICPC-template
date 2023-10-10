PDF_DIR := pdf

.PHONY: all clean

all: $(PDF_DIR)/template.pdf

$(PDF_DIR)/template.pdf: template.tex
	xelatex -shell-escape -output-directory=$(PDF_DIR) $<
	xelatex -shell-escape -output-directory=$(PDF_DIR) $<

clean:
	rm -f $(PDF_DIR)/*.pdf $(PDF_DIR)/*.aux $(PDF_DIR)/*.log

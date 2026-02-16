LATEX         := lualatex
PDF_VIEWER    := evince

.PHONY: all
all:
# Build the PDF
	 $(LATEX) example.tex
# Remove not needed files after building
	make clean

.PHONY: show
show: all
	$(PDF_VIEWER) example.pdf

.PHONY: clean
clean:
	rm -rf *.log *.aux *.out *.gz

.PHONY: clean-pdf
clean-pdf: clean
	-@rm -rf *.pdf

.PHONY: install
install:
	sudo apt-get install texlive-full

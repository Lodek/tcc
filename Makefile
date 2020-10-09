
files := $(shell find . -iname "*.tex")

article.pdf: ${files}
	pdflatex article.tex
	biber article
	pdflatex article.tex

clean:
	rm *.log *.bcf *.aux *.bbl *.blg *.run.xml

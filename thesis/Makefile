default :  thesis.pdf

thesis : thesis.pdf


thesis.pdf : thesis.ltx\
incLengthExample1.tex\
incLengthExample2.tex\
incLengthExample3.tex\
c00titlepage.tex\
c01introduction.tex\
c02context.tex\
c03method.tex\
c04validation.tex\
c05conclusion.tex\
incFourComponent.tex\
tutor.bib
	pdflatex thesis.ltx
	makeindex -s thesis.ist -o thesis.gls thesis.glo
	bibtex thesis.aux
	pdflatex thesis.ltx
	pdflatex thesis.ltx



incLengthExample1.tex :  incLengthExample1.lhs
	lhs2TeX -o  incLengthExample1.tex  incLengthExample1.lhs

incLengthExample2.tex  : incLengthExample2.lhs
	lhs2TeX -o  incLengthExample2.tex  incLengthExample2.lhs

incLengthExample3.tex : incLengthExample3.lhs
	lhs2TeX -o  incLengthExample3.tex  incLengthExample3.lhs

clean :
	rm -rf *.pdf   *.aux    *.acn    *.bbl   *.blg   *.glg   *.glo  *.gls *.glsdefs
	rm -rf *.idx   *.out     *.ilg      *.ist    *.log   *.ptb *.synctex.gz *.toc *.xdy
	rm -rf incLengthExample1.tex incLengthExample2.tex incLengthExample3.tex

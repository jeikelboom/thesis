lhs2TeX -o  incLengthExample1.tex  incLengthExample1.lhs
lhs2TeX -o  incLengthExample2.tex  incLengthExample2.lhs
lhs2TeX -o  incLengthExample3.tex  incLengthExample3.lhs
lhs2TeX -o  co3bRules.tex  co3bRules.lhs
pdflatex thesis.ltx
# xindy  -L english -C utf8 -I xindy -M thesis -t thesis.glg -o thesis.gls thesis.glo
makeindex -s thesis.ist -o thesis.gls thesis.glo
bibtex thesis.aux
pdflatex thesis.ltx
pdflatex thesis.ltx



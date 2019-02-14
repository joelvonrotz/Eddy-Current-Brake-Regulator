SET STR=dokumentation_wirbelstrombremse

pdflatex "%STR%"
makeglossaries "%STR%"
bibtex "%STR%"
biber "%STR%"
pdflatex "%STR%"
pdflatex "%STR%"

"%STR%.pdf"
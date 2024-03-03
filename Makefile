CV_EN = Quentin_Barbosa_CV_EN
CV_FR = Quentin_Barbosa_CV_FR
COV_LETTER_EN = Quentin_Barbosa_cover_letter_EN
COV_LETTER_FR = Quentin_Barbosa_cover_letter_FR

all: $(CV_EN).pdf $(CV_FR).pdf $(COV_LETTER_FR).pdf $(CV_EN).png $(CV_FR).png $(COV_LETTER_FR).png

$(CV_EN).pdf: $(CV_EN).tex awesome-cv.cls fontawesome.sty resume/*_en.tex fonts/*
	xelatex $(CV_EN).tex

$(CV_FR).pdf: $(CV_FR).tex awesome-cv.cls fontawesome.sty resume/*_fr.tex fonts/*
	xelatex $(CV_FR).tex

$(CV_EN).png: $(CV_EN).pdf
	convert -density 200 -background white -alpha remove $(CV_EN).pdf $(CV_EN).png

$(CV_FR).png: $(CV_FR).pdf
	convert -density 200 -background white -alpha remove $(CV_FR).pdf $(CV_FR).png

$(COV_LETTER_FR).pdf: $(COV_LETTER_FR).tex awesome-cv.cls fontawesome.sty fonts/*
	xelatex $(COV_LETTER_FR).tex

$(COV_LETTER_FR).png: $(COV_LETTER_FR).pdf
	convert -density 200 -background white -alpha remove $(COV_LETTER_FR).pdf $(COV_LETTER_FR).png

clean:
	rm -f $(CV_EN).pdf $(CV_EN)*.png $(CV_FR).pdf $(CV_FR)*.png $(COV_LETTER_FR).pdf $(COV_LETTER_FR)*.png *.log *.aux *.dvi *.out

.PHONY: all clean

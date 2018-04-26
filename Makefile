all: Quentin_Barbosa_CV_EN.pdf Quentin_Barbosa_CV_EN.png Quentin_Barbosa_CV_FR.pdf Quentin_Barbosa_CV_FR.png

Quentin_Barbosa_CV_EN.pdf: Quentin_Barbosa_CV_EN.tex awesome-cv.cls fontawesome.sty resume/*_en.tex fonts/*
	xelatex Quentin_Barbosa_CV_EN.tex

Quentin_Barbosa_CV_FR.pdf: Quentin_Barbosa_CV_FR.tex awesome-cv.cls fontawesome.sty resume/*_fr.tex fonts/*
	xelatex Quentin_Barbosa_CV_FR.tex

Quentin_Barbosa_CV_EN.png: Quentin_Barbosa_CV_EN.pdf
	convert Quentin_Barbosa_CV_EN.pdf Quentin_Barbosa_CV_EN.png

Quentin_Barbosa_CV_FR.png: Quentin_Barbosa_CV_FR.pdf
	convert Quentin_Barbosa_CV_FR.pdf Quentin_Barbosa_CV_FR.png

clean:
	rm -f Quentin_Barbosa_CV_EN.pdf Quentin_Barbosa_CV_EN*.png Quentin_Barbosa_CV_FR.pdf Quentin_Barbosa_CV_FR*.png

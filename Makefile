all: resume.pdf resume.png

resume.pdf: resume.tex awesome-cv.cls fontawesome.sty resume/* fonts/*
	xelatex resume.tex

resume.png: resume.pdf
	convert resume.pdf resume.png

clean:
	rm -f resume.pdf resume*.png

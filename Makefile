resume.pdf: resume.tex
	xelatex resume.tex

resume.png: resume.pdf
	convert resume.pdf resume.png

clean:
	rm -f resume.pdf resume*.png

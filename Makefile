all:	enbw.tex
	echo done

%.tex : %.ipynb
	jupyter nbconvert --to markdown $<
	pandoc --listings -f markdown -t latex $*.md -o $@



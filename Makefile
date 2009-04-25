all: en-pub-dev en-pub-adm en-adm en-dev pl-pub-dev pl-pub-adm pl-dev pl-adm

en: cv.tex
	cat cv.tex | sed -e 's/%en //g' > cv-en.tex

pl: cv.tex
	cat cv.tex | sed -e 's/%pl //g' > cv-pl.tex

en-pub: en
	cat cv-en.tex | sed -e 's/%pub //g' > cv-en-pub.tex

pl-pub: pl
	cat cv-pl.tex | sed -e 's/%pub //g' > cv-pl-pub.tex

en-pub-dev: en-pub
	cat cv-en-pub.tex | sed -e 's/%dev //g' > cv-en-pub-dev.tex
	pdflatex cv-en-pub-dev.tex

en-pub-adm: en-pub
	cat cv-en-pub.tex | sed -e 's/%adm //g' > cv-en-pub-adm.tex
	pdflatex cv-en-pub-adm.tex

en-dev: en
	cat cv-en.tex | sed -e 's/%dev//g' > cv-en-dev.tex
	pdflatex cv-en-dev.tex

en-adm: en
	cat cv-en.tex | sed -e 's/%adm//g' > cv-en-adm.tex
	pdflatex cv-en-adm.tex

pl-pub-dev: pl-pub
	cat cv-pl-pub.tex | sed -e 's/%dev//g' > cv-pl-pub-dev.tex
	pdflatex cv-pl-pub-dev.tex

pl-pub-adm: pl-pub
	cat cv-pl-pub.tex | sed -e 's/%adm//g' > cv-pl-pub-adm.tex
	pdflatex cv-pl-pub-adm.tex

pl-dev: pl
	cat cv-pl.tex | sed -e 's/%dev//g' > cv-pl-dev.tex
	pdflatex cv-pl-dev.tex

pl-adm: pl
	cat cv-pl.tex | sed -e 's/%adm//g' > cv-pl-adm.tex
	pdflatex cv-pl-adm.tex






SRC = $(wildcard exam*.tex)
OBJ = $(patsubst %.tex,%.dvi,$(SRC))
PDF = $(patsubst %.tex,%.pdf,$(SRC))


all: $(OBJ)

pdf: $(PDF)


$(OBJ): %.dvi: %.tex
	platex $<

$(PDF): %.pdf: %.dvi
	dvipdfmx $<


clean:
	rm -f $(OBJ) $(PDF) *~ *.aux *.log



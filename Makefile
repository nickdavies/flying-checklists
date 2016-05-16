LATEX=pdflatex
LATEX_FLAGS=-file-line-error -halt-on-error -interaction nonstopmode

BASEFILE=main.tex
OUTDIR=build

main: $(BASEFILE)

%.tex: setup
	$(LATEX) $(LATEX_FLAGS) -output-directory $(OUTDIR) $(BASEFILE)

clean:
	rm -f $(OUTDIR)/*

setup: $(OUTDIR)

$(OUTDIR):
	mkdir -p $(OUTDIR)

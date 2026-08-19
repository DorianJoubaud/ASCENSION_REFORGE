MAIN = main
LATEXMK = latexmk
LATEXMK_FLAGS = -pdf -interaction=nonstopmode -file-line-error

.PHONY: all watch clean wipe

all:
	$(LATEXMK) $(LATEXMK_FLAGS) $(MAIN)

watch:
	$(LATEXMK) $(LATEXMK_FLAGS) -pvc $(MAIN)

clean:
	$(LATEXMK) -c $(MAIN)
	@rm -f *.bbl

wipe:
	$(LATEXMK) -C $(MAIN)
	@rm -f *.bbl

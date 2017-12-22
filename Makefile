# rules
# -----

fr-short: cv-fr-short.tex cv_controls.bib
	latexmk -xelatex -bibtex $<
	@echo ""
	@echo "done"

en-short: cv-en-short.tex cv_controls.bib
	latexmk -xelatex -bibtex $<
	@echo ""
	@echo "done"

# dependencies
# ------------
cv-fr-short.tex: img/germain.JPG bib/achemso_perso.bst bib/articles.bib
cv-en-short.tex: img/germain.JPG bib/achemso_perso.bst bib/articles.bib

# WARNING sauvage clean
# ---------------------
clean:
	@echo ""
	@echo "Clean up files"
	@echo "--------------"
	rm -vf *.aux *.log *.fls *.fdb_latexmk *.bbl *.out *.blg *.synctex.gz
	ls -lrth
	@echo ""
	@echo "done"

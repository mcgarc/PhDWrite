# PhDWrite

Various scribblings from across my PhD

Ensure that uncommited files (e.g. \*.bib) are stored (or linked to) in
`~/texmf/tex/latex`, or other relevant directories. This can be achieved by
running `setup.sh`. Alternatively, just copy or link the bib file in this
directory, e.g. `ln -s $BIB_PATH bib.bib`.

Bibliography is setup to run with biber, so run `pdflatex main.tex` then `biber
main` ad nauseum to render.

Figures are now included in the repo. SVGs can be made available upon request.

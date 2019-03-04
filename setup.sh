#!/bib/bash

# Check if latex directory exists and if not create it
LATEXDIR=~/texmf/tex/latex
if [ ! -d  $LATEXDIR ]; then
  mkdir -p $LATEXDIR
fi

BIBTEXDIR=~/texmf/bibtex/bib
if [ ! -d  $BIBTEXDIR ]; then
  mkdir -p $BIBTEXDIR
fi

# Check if the bib file exists in the tex directory and if not then link it
if [ ! -f $BIBTEXDIR/bib.bib ]; then 
  read -e -p "Enter .bib file path: " BIBPATH
  BIBPATH="${BIBPATH//\~/$HOME}"
  ln -s $BIBPATH $BIBTEXDIR/bib.bib
fi

echo "Setup complete!"

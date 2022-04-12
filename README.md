# latex-to-pdf
makepdf.sh is a bash script to make a pdf from a tex file. bibpdf.sh does the same thing for tex files that reference a bib file.

Requires texlive: ```sudo apt install texlive```

Running instructions:
```<makepdf.sh | bibpdf.sh> <filename without extension>```

To add as an alias in zsh, add the following line to .zshrc:
```alias makepdf="path/to/makepdf.sh"```
```alias bibpdf="path/to/bibpdf.sh"```
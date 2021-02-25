---
title:          "Létfontosságú Információs Rendszerelemekben alkalmazott nyílt forráskód és szabad szoftver rendszerszemléletű biztonsági analízise"
subtitle:       Doktori (PhD) értekezés tervezet
author:         Mészáros Gergely
institute:      Nemzeti Közszolgálati Egyetem
titlegraphics:  ábrák/nke-logo-gray.png
bibliography:   zotero.bib
biblio-files:   zotero
biblio-title:   Hivatkozások
csl:            nke.csl
mainfont:       "TeX Gyre Termes"
fontsize:       12pt
parindent:      0.5cm
parskip:        0pt
numbersection:  true
top-level-division: chapter
classoption:    oneside
papersize:      a4
documentclass:  scrreprt
lang:           hu
toc:            true
toc-depth:      4
output:
        pdf_document:
                toc: true
                number_sections: true
geometry: "left=2cm,right=2cm,top=2.5cm,bottom=2.5cm"
header-includes: 
        - \usepackage{epigraph}
        - \usepackage{etoolbox} 
        - \usepackage{array} 
        - \usepackage[onehalfspacing]{setspace} 
        - \usepackage{pslatex} 
        - \usepackage{pdflscape}
        - \AtBeginEnvironment{longtable}{\singlespacing}
        - \setlength{\extrarowheight}{8pt}
        - \pagenumbering{gobble}
        - \usepackage{fancyhdr}
        - \rhead{\leftmark}
        - \raggedbottom
        - \widowpenalty=1000
        - \clubpenalty=500
        - \displaywidowpenalty=50
#       - \widowpenalties=3 10000 10000 150
#       - \clubpenalty=150
#        - \setcounter{chapter}{0}
#        - \usepackage{titlesec}
#        - \newcommand{\sectionbreak}{\clearpage}
#        - \newenvironment{rotatepage}
#                {\pagebreak[4]\global\pdfpageattr\expandafter{\the\pdfpageattr/Rotate 90}}
#                {\pagebreak[4]\global\pdfpageattr\expandafter{\the\pdfpageattr/Rotate 0}}
#        - \newcommand{\hideFromPandoc}[1]{#1}
#        - \hideFromPandoc{
#               \let\Begin\begin
#               \let\End\end
#          }
# vim: set et sw=4 ts=4 :
---

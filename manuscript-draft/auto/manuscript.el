(TeX-add-style-hook
 "manuscript"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "a4paper" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem") ("geometry" "a4paper" "total={150mm,237mm}" "left=30mm" "top=30mm" "")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art12"
    "inputenc"
    "fontenc"
    "graphicx"
    "grffile"
    "longtable"
    "wrapfig"
    "rotating"
    "ulem"
    "amsmath"
    "textcomp"
    "amssymb"
    "capt-of"
    "hyperref"
    "geometry"
    "fancyhdr")
   (LaTeX-add-labels
    "sec:org5fe1151"
    "sec:org0142afd"
    "sec:org1365b04"
    "sec:org6bf5f0a"
    "sec:org5621eb2"
    "sec:org46946c1"
    "sec:org909edb2"
    "sec:org9ae92ab"
    "sec:org4c762d3"
    "sec:org47c5792"
    "sec:orgb479b30"
    "sec:org8f07cb7"
    "sec:org7a52243"
    "sec:org5cd5246"
    "sec:orgfdaf4fd"
    "sec:orgefb49b6"
    "sec:org2c4343f"
    "sec:orgce589e3"
    "sec:org9eb27cf"
    "sec:org22be26a"
    "sec:org6d2a166"
    "sec:org9212529"
    "sec:orgc6f06ed"
    "sec:org0e83cb3"
    "sec:org96f80ab"
    "sec:org581a076"
    "sec:org25240f3"
    "sec:orgaebcfc6"
    "fig:org5f8012d"
    "sec:orgd213a93"
    "sec:orga664014"
    "sec:orgbd01659"
    "sec:org3559ffc"
    "sec:org3ea7f34"
    "sec:orgc0a1a79"))
 :latex)


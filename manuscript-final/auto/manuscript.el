(TeX-add-style-hook
 "manuscript"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "a4paper" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem") ("geometry" "a4paper" "total={150mm,237mm}" "left=30mm" "top=30mm" "")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
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
    "sec:orgb12dd0d"
    "sec:orgdf66945"
    "sec:orgbacb5dd"
    "sec:orgcd7f3c8"
    "sec:org68a1d09"
    "sec:org1d99bb7"
    "sec:org6621bf6"
    "sec:orgd921e72"
    "sec:orgd34952f"
    "sec:org4db3010"
    "sec:org199542a"
    "sec:org1bed041"
    "sec:orgc35337e"
    "sec:orgd37cbfb"
    "sec:org3e1525d"
    "sec:orge8158f7"
    "sec:orgf55cc6e"
    "sec:orgd078fd9"
    "sec:org4b844ef"
    "sec:org25b5502"
    "sec:orga853f5d"
    "sec:orgdb7c949"
    "sec:org09d7858"
    "sec:org04e4ebc"
    "sec:org085eaa7"
    "sec:orgcdcc826"
    "sec:orgce0b257"
    "sec:org9ff3665"
    "sec:org2164899"
    "sec:orgbece159"
    "sec:orgec81d9a"))
 :latex)


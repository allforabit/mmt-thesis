(TeX-add-style-hook
 "outline"
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
    "geometry")
   (LaTeX-add-labels
    "sec:orgcfcd553"
    "sec:org97ad61c"
    "sec:org6a91cc1"
    "sec:orgee698d6"
    "sec:orgc1d4147"
    "sec:org183e1d4"
    "sec:org582f749"
    "sec:orge35fa60"
    "sec:org21aa393"
    "sec:orge91cf1d"
    "sec:org586cff9"
    "sec:orgd8b677b"
    "sec:org4582e4e"
    "sec:org764cfbe"
    "sec:org9011e2c"
    "sec:org234a3e0"
    "sec:orgf8dcfea"
    "sec:org147952e"
    "sec:orgcca6374"
    "sec:orgea92578"
    "sec:orga2b93c0"
    "sec:org24bf36e"
    "sec:org2c235eb"
    "sec:org4a6019c"
    "sec:orgffe94eb"
    "sec:orgcc20f04"
    "sec:orgf2c29ee"
    "sec:org89e7f42"
    "sec:org01905a0"
    "sec:orgc7754e3"
    "sec:orgb4c782f"
    "sec:orgfd63fde"
    "sec:org5f9f7f4"
    "sec:orge950425"
    "sec:org733257a"
    "sec:org49fd10e"
    "sec:orgfdd514d"
    "sec:orgb80f054"
    "sec:orgf04e15a"
    "sec:org6673bbe"
    "sec:org0b70dad"
    "sec:org19dcd36"))
 :latex)


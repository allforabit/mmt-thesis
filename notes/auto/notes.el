(TeX-add-style-hook
 "notes"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem")))
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
    "art11"
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
    "natbib")
   (LaTeX-add-labels
    "sec:org1e71ba7"
    "sec:org592e895"
    "sec:org34fa9a3"
    "sec:orgf238ae3"
    "sec:org34b6665"
    "sec:orgb6b2ca6"
    "sec:org1021683"
    "sec:org66b2781"
    "sec:orgd65eb2c"
    "sec:org0d4ba51"
    "sec:orgea41ad6"
    "sec:org9e9fa25"
    "sec:orgf68873e"
    "sec:orgcf88550"
    "sec:org3c36ba8"
    "sec:org1e7619f"
    "sec:orgac2d8e7"
    "sec:org5830a4f"
    "sec:org60e7124"
    "sec:org474eb0a"
    "sec:org35c47cc"
    "sec:org4642a6f"
    "sec:org7a59c6c"
    "sec:org39b8e68"
    "sec:org4a52a54"
    "sec:org8ff8db8"
    "sec:org3793485"
    "sec:orgea1202e"
    "sec:org144167f"
    "sec:orga89d64a"
    "sec:orgd1efd46")
   (LaTeX-add-bibliographies
    "../bibliography/mmt-thesis"))
 :latex)


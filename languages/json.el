;;; Code:

(use-package json-mode
  :defer t
  :after
  eglot
  :mode
  "\\.json'"
  :hook
  '(json-mode . eglot-ensure)
  :config
  (add-to-list 'eglot-server-programs
               '(json-mode . ("npx"
                              "vscode-json-languageserver-bin"
                              "--stdio"))))

(provide 'json)

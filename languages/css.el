;;; Code:

(use-package css-mode
  :defer t
  :after
  eglot
  :mode
  "\\.css'"
  :hook
  '('css-mode . eglot-ensure)
  :config
  (add-to-list 'eglot-server-programs
               '(css-mode . ("npx"
                             "vscode-css-languageserver-bin"
                             "--stdio"))))

(provide 'css)

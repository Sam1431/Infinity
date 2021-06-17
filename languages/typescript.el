;;; Code:

(use-package typescript-mode
  :defer t
  :after
  eglot
  :mode
  "\\.ts\\'"
  :hook
  '(typescript-mode . eglot-ensure)
  :config
  (add-to-list 'eglot-server-programs
               '(typescript-mode . ("npx"
                                    "typescript-language-server"
                                    "--stdio"))))

(provide 'typescript)

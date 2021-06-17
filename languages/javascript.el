;;; Code:

(use-package js
  :defer t
  :after
  eglot
  :mode
  ("\\.jsx?\\'" . js-mode)
  :hook
  '(js-mode . eglot-ensure)
  :config
  (add-to-list 'eglot-server-programs
	       '(js-mode . ("npx"
			    "typescript-language-server"
			    "--stdio"))))

(provide 'javascript)

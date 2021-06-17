;;; Code:

(use-package web-mode
  :defer t
  :after
  eglot
  :mode
  "\\.tsx\\'"
  :init
  (add-hook 'web-mode-hook
            (hook-when "\\.tsx\\'"
		       (lambda ()
                         (add-to-list 'eglot-server-programs
				      '(web-mode . ("npx"
					            "typescript-language-server"
                                                    "--stdio"))))))
  (add-hook 'web-mode-hook
	    (hook-when "\\.tsx\\'" 'eglot-ensure)))

(use-package mhtml-mode
  :mode
  "\\.html?\\'")

(provide 'web)



;;; init.el --- emacs configuration -*- lexical-binding: t; -*-
(add-to-list 'load-path "~/.emacs.d/modules/+counsel/")
(add-to-list 'load-path "~/.emacs.d/modules/+desktop/")
(add-to-list 'load-path "~/.emacs.d/modules/+editor/")
(add-to-list 'load-path "~/.emacs.d/modules/+evil/")
(add-to-list 'load-path "~/.emacs.d/modules/+ivy/")

;; MANDATORY MODULES

(require '+ivy)
(require '+emacs-vim)
(require '+editor)
(require '+desktop) ;; <-- EXCEPT THIS YOU CAN ENABLE IT IF YOU REQUIRE EXWM
(require '+counsel)

(provide 'modules)

;;; init.el ends here

;;; Code:

;;; =============================================================
;;; SOME PACKAGE REQUIRED FOR OTHER SETTINGS
;;; =============================================================

(use-package general
     :defer t)
(use-package all-the-icons
     :defer 0.5)
(use-package hl-todo
     :defer t)
(use-package ranger
     :defer t)
(use-package dmenu
     :defer t)
(use-package magit
     :defer t)
(use-package pkg-info)

(add-to-list 'load-path "~/.emacs.d/core/ui/completion")
(add-to-list 'load-path "~/.emacs.d/core/ui/dashboard")
(add-to-list 'load-path "~/.emacs.d/core/ui/elements")
(add-to-list 'load-path "~/.emacs.d/core/ui/font")
(add-to-list 'load-path "~/.emacs.d/core/ui/straight")
(add-to-list 'load-path "~/.emacs.d/core/ui/theme")
(add-to-list 'load-path "~/.emacs.d/core/ui/neotree")

(require 'neotree)
(require 'modeline)
(require 'font)
(require 'company)
(require 'onedark)
;; (require 'ivy)
(require 'which-key)
(require 'dashboard)
(require 'straight-ui)

(provide 'core-ui)

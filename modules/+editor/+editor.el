;; -*- lexical-binding: t; -*-
;;; Code:

(use-package projectile)
(use-package crux)
(use-package smex)
(smex-initialize)

(use-package editorconfig
  :defer t
  :hook
  '(after-init . editorconfig-mode))

(use-package display-line-numbers
  :defer t
  :hook
  '(prog-mode . display-line-numbers-mode)
  :init
  (setq
   display-line-numbers-type 'relative))

(use-package whitespace-mode
  :defer t
  :hook
  '(prog-mode . whitespace-mode)
  :init
  (setq
   whitespace-style '(face trailing tabs)))

(use-package writeroom-mode
    :defer t)

(use-package apheleia
  :defer t
  :hook
  '(after-init . apheleia-global-mode))

(provide '+editor)

;; -*- lexical-binding: t; -*-
;;; Code:

(use-package vimish-fold
  :defer t
  :after
  evil)

(use-package evil-vimish-fold
  :defer t
  :after
  vimish-fold
  :hook
  '(prog-mode . evil-vimish-fold-mode))


(add-hook 'prog-mode-hook #'show-paren-mode)

(provide '+vim)

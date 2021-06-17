;; -*- lexical-binding: t; -*-
;;; Code:

(use-package no-littering
  :defer t
  :init
  (setq
   no-littering-etc-directory "~/.local/emacs/etc/"
   no-littering-var-directory "~/.local/emacs/var/")
  (require 'no-littering)
  :config
  (setq
   auto-save-file-name-transforms
   `((".*" ,(no-littering-expand-var-file-name "auto-save/") t))
   custom-file
   (no-littering-expand-etc-file-name "custom.el"))
  (with-eval-after-load 'recentf
    (add-to-list 'recentf-exclude no-littering-var-directory)
    (add-to-list 'recentf-exclude no-littering-etc-directory)))

(provide 'core-directory)

;; -*- lexical-binding: t; -*-
;;; Code:


(use-package which-key
  :defer t
  :hook
  '(after-init . which-key-mode)
  :config
  (which-key-setup-side-window-bottom))

(provide 'which-key)

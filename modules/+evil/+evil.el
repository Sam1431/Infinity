;; -*- lexical-binding: t; -*-
;;; Code:

;;==================================================
;; EVIL MODE
;;==================================================

(use-package evil
  :defer nil
  :init
  (setq
   evil-want-keybinding nil)
   :config
   (evil-mode +1))

(provide '+evil)

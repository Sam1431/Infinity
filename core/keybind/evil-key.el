;; -*- lexical-binding: t; -*-
;;; Code:


(use-package general
    :defer t)
;; (require general)

(general-create-definer my-leader-def
  ;; :prefix my-leader
  :prefix "SPC")

(general-create-definer my-local-leader-def
  ;; :prefix my-local-leader
  :prefix "SPC m")

(my-leader-def
  :keymaps 'normal
  ;; bind "SPC a"
  "h t" 'load-theme
  "h m" 'doom-modeline-mode
  "h p" 'dmenu
  "h m" 'counsel-linux-app

  "o r" 'ranger
  "o s" 'eshell-new
  "o p" 'neotree-toggle

  "i d" 'infinity/open-dashboard
  "i r" 'infinity/desktop-restart
  "i u" 'infinity/update-all
  "i t" 'infinity/try-package
  "i q" 'infinity/quit-dashboard

  "w h" 'windmove-left
  "w j" 'windmove-down
  "w k" 'windmove-up
  "w l" 'windmove-right
  )


(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(provide 'evil-key)


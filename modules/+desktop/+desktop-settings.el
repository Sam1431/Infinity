;; -*- lexical-binding: t; -*-
;;; Code:

(require 'exwm)
(require 'exwm-config)
(require 'exwm-randr)

(setq exwm-workspace-number 1)
(setq exwm-input-global-keys `(,(kbd "s-&") .
                               (lambda (command)
                                 (interactive (list (read-shell-command "$ ")))
                                 (start-process-shell-command command nil command))))

;;; KEYBINDINGS

(exwm-input-set-key (kbd "s-p") #'dmenu)
(exwm-input-set-key (kbd "<s-return>") #' eshell-new)
(exwm-input-set-key (kbd "s-v") #' split-window-vertically)
(exwm-input-set-key (kbd "s-b") #' split-window-horizontally)
(exwm-input-set-key (kbd "C-s-k") #' evil-window-rotate-upwards)
(exwm-input-set-key (kbd "C-s-j") #' evil-window-rotate-downwards)
(exwm-input-set-key (kbd "M-s-k") #' evil-window-increase-height)
(exwm-input-set-key (kbd "M-s-j") #' evil-window-decrease-height)
(exwm-input-set-key (kbd "M-s-h") #' evil-window-increase-width)
(exwm-input-set-key (kbd "M-s-l") #' evil-window-decrease-width)
(exwm-input-set-key (kbd "s-k") #' windmove-up)
(exwm-input-set-key (kbd "s-j") #' windmove-down)
(exwm-input-set-key (kbd "s-h") #' windmove-left)
(exwm-input-set-key (kbd "s-l") #' windmove-right)
(exwm-input-set-key (kbd "s-x") #' evil-window-delete)
(exwm-input-set-key (kbd "s-q") #' kill-buffer-and-window)
(exwm-input-set-key (kbd "s-f") #' neotree-toggle)

(provide '+desktop-settings)

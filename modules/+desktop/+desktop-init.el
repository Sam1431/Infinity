;; -*- lexical-binding: t; -*-
;;; Code:

;;===============================
;; INIT EXWM
;;===============================

(use-package exwm
    :defer t)
(require 'exwm)
(require 'exwm-config)
(require 'exwm-randr)


(exwm-randr-enable)
(start-process-shell-command "xrandr" nil "xrandr --primary --mode 1366x768 --rotate normal")

(setq exwm-workspace-switch-create 1)

(provide '+desktop-init)

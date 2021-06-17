;; -*- lexical-binding: t; -*-
;;; Code:

 (use-package neotree
   :ensure t
   :init
   (setq inhibit-compacting-font-caches t)
   (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
   (setq neo-window-width 30)
   (setq-default neo-show-hidden-files t))

(provide 'neotree)

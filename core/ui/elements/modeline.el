;; -*- lexical-binding: t; -*-
;;; Code:

 (use-package doom-modeline
   :hook
   '(after-init . doom-modeline-mode)
   :defer t
   :config
   (setq doom-modeline-height 28)
   (setq doom-modeline-bar-width 3)
   (setq doom-modeline-hud t)
   (setq doom-modeline-icon (display-graphic-p)))

 (global-hl-line-mode 1)

(provide 'modeline)

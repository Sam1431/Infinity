;; -*- lexical-binding: t; -*-
;;; Code:

 (set-face-attribute 'default nil
   :font "Iosevka"
   :height 100
   :weight 'medium)
 (set-face-attribute 'variable-pitch nil
   :font "Iosevka"
   :height 120
   :weight 'medium)
 (set-face-attribute 'fixed-pitch nil
   :font "Iosevka"
   :height 100
   :weight 'medium)
 (set-face-attribute 'font-lock-comment-face nil
   :slant 'italic)
 (set-face-attribute 'font-lock-keyword-face nil
   :slant 'italic)

 ;; Uncomment the following line if line spacing needs adjusting.
 (setq-default line-spacing 0.12)

 (blink-cursor-mode 0)
 (add-to-list 'default-frame-alist '(font . "Iosevka:pixelsize=14"))
 (setq global-prettify-symbols-mode t)

(provide 'font)

;; -*- lexical-binding: t; -*-
;;; Code:

;;==================================================
;; IVY MODE
;;==================================================

 (use-package ivy
   ;; :defer t
   :defer 0.1
   :diminish
   :bind (("C-c C-r" . ivy-resume)
          ("C-x B" . ivy-switch-buffer-other-window))
   :custom
  ;; (ivy-count-format "(%d/%d) ")
   (ivy-use-virtual-buffers t)
   :config (ivy-mode)
   (setq ivy-height 17)
   (setq ivy-initial-inputs-alist nil))


;;==================================================
;; IVY EXTENSION
;;==================================================

 ;;  (use-package ivy-rich
 ;;    :defer t
 ;;    :after ivy
 ;;    :custom
 ;;    (ivy-virtual-abbreviate 'full
 ;;                            ivy-rich-switch-buffer-align-virtual-buffer t
 ;;                            ivy-rich-path-style 'abbrev)
 ;;    :config
 ;;    (ivy-set-display-transformer 'ivy-switch-buffer
 ;;                                 'ivy-rich-switch-buffer-transformer))
 ;;  
 ;;  ;;==================================================
 ;;  ;; ICONS IN IVY
 ;;  ;;==================================================
 ;;  
 ;;  (use-package all-the-icons-ivy
 ;;    :after (all-the-icons ivy)
 ;;    :custom (all-the-icons-ivy-buffer-commands '(ivy-switch-buffer-other-window))
 ;;    :config
 ;;    (add-to-list 'all-the-icons-ivy-file-commands 'counsel-dired-jump)
 ;;    (add-to-list 'all-the-icons-ivy-file-commands 'counsel-find-library)
 ;;    (all-the-icons-ivy-setup))


;;==================================================
;; SWIPER
;;==================================================


(use-package swiper
  :defer t
  :after ivy
  :bind (("C-s" . swiper)
         ("C-r" . swiper)))

(provide '+ivy)

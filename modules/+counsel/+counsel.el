;; -*- lexical-binding: t; -*-
;;; Code:

(use-package counsel
  :defer t
  :after ivy
  :config (counsel-mode)
  :bind*
  (("M-x"     . counsel-M-x)
   ("C-s"     . swiper)
   ("C-x C-f" . counsel-find-file)
   ("C-x C-r" . counsel-recentf)
   ("C-c g"   . counsel-git)
   ("C-c j"   . counsel-git-grep)
   ("C-c /"   . counsel-ag)
   ("C-x l"   . counsel-locate)
   ("C-x C-f" . counsel-find-file)
   ("<f1> f"  . counsel-describe-function)
   ("<f1> v"  . counsel-describe-variable)
   ("<f1> l"  . counsel-find-library)
   ("<f2> i"  . counsel-info-lookup-symbol)
   ("<f2> u"  . counsel-unicode-char)))
 ;;  ("C-c C-r" . ivy-resume))

(provide '+counsel)

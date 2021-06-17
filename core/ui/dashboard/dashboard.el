;; -*- lexical-binding: t; -*-
;;; Code:


(use-package dashboard
   :defer t
   :ensure t
   :config
 (dashboard-setup-startup-hook))

(require 'dashboard)
(dashboard-setup-startup-hook)
(setq initial-buffer-choice (lambda () (switch-to-buffer "*dashboard*")))


;;;; SETTINGS


 (setq dashboard-banner-logo-title "[   I   N   F   I   N   I   M   A   C   S   ]")
 (setq dashboard-items '((recents   . 5)
                         (projects  . 5)))

 (setq dashboard-heading-icons '((recents   . "file-text")
                                 (bookmarks . "bookmark")
                                 (agenda    . "calendar")
                                 (projects  . "briefcase")
                                 (registers . "database")))

 (setq dashboard-set-footer t)
 (setq  dashboard-footer-icon (cond ((all-the-icons-octicon "code"
                                                               :height 1.1
                                                               :v-adjust -0.05
                                                               :face 'error))
                                        ((char-displayable-p ? ) " ")
                                        (t (propertize ">" 'face 'dashboard-footer))))

 (setq dashboard-init-info (message "Infinity loaded in %.2fs" (float-time (time-subtract (current-time) Init-Time))))
 (setq dashboard-set-heading-icons t)
 (setq dashboard-set-file-icons nil)
 (setq dashboard-set-navigator t)
 (setq dashboard-show-shortcuts nil)
 (setq dashboard-center-content t)
 (setq dashboard-startup-banner "~/.emacs.d/core/ui/logo/init-mini.png")
 (setq dashboard-navigator-buttons
        `(;; line1
          (("" " Homepage " "Browse homepage" (lambda (&rest _) (browse-url "https://github.com/Sam1431/Astro-Macs")))
 	   ("" " Restore " "Restore previous session" (lambda (&rest _) (recover-session)))
           ("" " Settings " "Open init.el" (lambda (&rest _) (find-file "~/.emacs.d/init.el")))
           ("" " Update " "Update Infinity" (lambda (&rest _) (infinity/update-all))))))

(provide 'dashboard)

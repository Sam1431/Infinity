;; -*- lexical-binding: t; -*-
;;; Code:

(defun infinity/update-all()
  "update all straight.el recipes"
  (interactive)
  (straight-pull-all))

(defalias 'infinity/try-package 'straight-use-package)
(defalias 'infinity/update-package 'straight-pull-package)
(defalias 'infinity/up-pkg-deps 'straight-pull-package-and-deps)
(defun infinity/package-install 'use-package)
;; (defalias 'sup 'straight-use-package)

(defun infinity/desktop-restart () ;; TAKE From EXWM Github code
  (interactive)
  (exwm--log)
  (when (exwm--confirm-kill-emacs "[INFINITY] Are you sure to restart desktop ? " 'no-check)
    (let* ((attr (process-attributes (emacs-pid)))
           (args (cdr (assq 'args attr)))
           (ppid (cdr (assq 'ppid attr)))
           (pargs (cdr (assq 'args (process-attributes ppid)))))
      (cond
       ((= ppid 1)
        ;; The parent is the init process.  This probably means this
        ;; instance is an emacsclient.  Anyway, start a control instance
        ;; to manage the subsequent ones.
        (call-process (car command-line-args))
        (kill-emacs))
       ((string= args pargs)
        ;; This is a subordinate instance.  Return a magic number to
        ;; inform the parent (control instance) to start another one.
        (kill-emacs ?R))
       (t
        ;; This is the control instance.  Keep starting subordinate
        ;; instances until told to exit.
        ;; Run `server-force-stop' if it exists.
        (run-hooks 'kill-emacs-hook)
        (with-temp-buffer
          (while (= ?R (shell-command-on-region (point) (point) args))))
        (kill-emacs))))))


(defun infinity/reload-init ()
  "Reload the init-file."
  (interactive)
  (message "Reloading init-file...")
  (require 'use-package)
  (load user-init-file nil 'nomessage)
  (message "Reloading init-file...done"))

;; (radian-bind-key "r" #'radian-reload-init)


(defun eshell-new()
  "Open a new instance of eshell."
  (interactive)
  (eshell 'N))

    (defun infinity/open-dashboard ()
      "Open the *dashboard* buffer and jump to the first widget."
      (interactive)
      ;; Check if need to recover layout
      (if (> (length (window-list-1))
             ;; exclude `treemacs' window
             (if (and (fboundp 'treemacs-current-visibility)
                      (eq (treemacs-current-visibility) 'visible))
                 2
               1))
          (setq dashboard-recover-layout-p t))

      (delete-other-windows)

      ;; Refresh dashboard buffer
      (when (get-buffer dashboard-buffer-name)
        (kill-buffer dashboard-buffer-name))
      (dashboard-insert-startupify-lists)
      (switch-to-buffer dashboard-buffer-name)

      ;; Jump to the first section
      (dashboard-goto-recent-files))

    (defun infinity/quit-dashboard ()
      "Quit dashboard window."
      (interactive)
      (quit-window t)
      (when (and dashboard-recover-layout-p
                 (bound-and-true-p winner-mode))
        (winner-undo)
        (setq dashboard-recover-layout-p nil)))



(provide 'options)

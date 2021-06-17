;;; init.el --- emacs configuration -*- lexical-binding: t; -*-

(defun hook-when (ext action)
  "Combinator for describing a computation to be run in mode hooks.
ACTION is run when the file name matches EXT."
  #'(lambda ()
      (if (buffer-file-name)
	  (if (string-match ext buffer-file-name)
              (funcall action)))))

(fset 'yes-or-no-p 'y-or-n-p)

;;==================================================
;; GOTTA GO FAST (SPEEDUP EMACS STARTUP)
;;==================================================

(defvar infinity-gc-cons-threshold (if (display-graphic-p) 64000000 1600000)
  "The default value to use for `gc-cons-threshold'. If you experience freezing,
decrease this. If you experience stuttering, increase this.")

(defvar infinity-gc-cons-upper-limit (if (display-graphic-p) 512000000 128000000)
  "The temporary value for `gc-cons-threshold' to defer it.")

(defvar infinity-gc-timer (run-with-idle-timer 10 t #'garbage-collect)
  "Run garbarge collection when idle 10s.")

(defvar default-file-name-handler-alist file-name-handler-alist)

(setq file-name-handler-alist nil)
(setq gc-cons-threshold infinity-gc-cons-upper-limit
      gc-cons-percentage 0.6)
(add-hook 'emacs-startup-hook
          (lambda ()
            "Restore defalut values after startup."
            (setq file-name-handler-alist default-file-name-handler-alist)
            (setq gc-cons-threshold infinity-gc-cons-threshold
                  gc-cons-percentage 0.1)

            ;; GC automatically while unfocusing the frame
            ;; `focus-out-hook' is obsolete since 27.1
            (if (boundp 'after-focus-change-function)
                (add-function :after after-focus-change-function
                  (lambda ()
                    (unless (frame-focus-state)
                      (garbage-collect))))
              (add-hook 'focus-out-hook 'garbage-collect))

            ;; Avoid GCs while using `ivy'/`counsel'/`swiper' and `helm', etc.
            ;; @see http://bling.github.io/blog/2016/01/18/why-are-you-changing-gc-cons-threshold/
            (defun my-minibuffer-setup-hook ()
              (setq gc-cons-threshold infinity-gc-cons-upper-limit))

            (defun my-minibuffer-exit-hook ()
              (setq gc-cons-threshold infinity-gc-cons-threshold))

            (add-hook 'minibuffer-setup-hook #'my-minibuffer-setup-hook)
            (add-hook 'minibuffer-exit-hook #'my-minibuffer-exit-hook)))

;;==================================================
;; LAZY LOAD PACKGAE MANAGER
;;==================================================

;;  (defvar cache-file "~/.emacs.d/cache/autoloads")
;;  
;;  (defun initialize ()
;;    (unless (load cache-file t t)
;;      (setq package-activated-list nil)
;;      (package-initialize)
;;      (with-temp-buffer
;;        (cl-pushnew doom-core-dir load-path :test #'string=)
;;        (dolist (desc (delq nil (mapcar #'cdr package-alist)))
;;          (let ((load-file-name (concat (package--autoloads-file-name desc) ".el")))
;;            (when (file-readable-p load-file-name)
;;              (condition-case _
;;                  (while t (insert (read (current-buffer))))
;;                (end-of-file)))))
;;        (prin1 `(setq load-path ',load-path
;;                      auto-mode-alist ',auto-mode-alist
;;                      Info-directory-list ',Info-directory-list)
;;               (current-buffer))
;;        (write-file (concat cache-file ".el"))
;;        (byte-compile-file cache-file))))
;;  
;;  (initialize)

;;==================================================
;; PROFILE EMACS STARTUP
;;==================================================

(add-hook 'emacs-startup-hook
           (lambda ()
             (message "*** InfiniMacs loaded in %s with %d garbage collections."
                      (format "%.2f seconds"
                              (float-time
                               (time-subtract after-init-time before-init-time)))
                      gcs-done)))

;;==================================================
;; ADD THE DIRECTORIES TO REQUIRE CORE-CONFIG , MODULES , USER SETTINGS
;;==================================================

(add-to-list 'load-path "~/.emacs.d/user")
(add-to-list 'load-path "~/.emacs.d/languages")
(add-to-list 'load-path "~/.emacs.d/core")
(add-to-list 'load-path "~/.emacs.d/modules")

;;; ========================================================================
;;; CORE / MODULES / LANGUAGES
;;; ========================================================================

;; REQUIRE THE CORE
(require 'core)

;; REQUIRE THE NECESSARY MODULES ( MODULE PRE-ACTIVATED ARE REQUIRED BY THE CONFIG )
(require 'modules)

;; SUPPORT FOR DIFFERED LANGUAGES
(require 'css)
(require 'javascript)
(require 'json)
(require 'typescript)
(require 'web)
(require 'haskell)
(require 'nix)
(require 'yaml)
(require 'org)

;; KEEP YOUR CUSTOM SETTINGS FOR THE APPS YOU INSTALLED HERE ( LIKE CONFIG.EL )
;; (require 'user-settings)

;; ( TIP : USE :defer t IN use-package WHEREVER POSSIBLE TO MAINTAIN SPEED , ATLEAST THATS WHAT I DO - LEARNT FROM SYSTEM CRAFTERS )

;;============================================================================

(add-hook 'emacs-startup-hook
  (lambda ()
    (setq gc-cons-threshold 16777216 ; 16mb
          gc-cons-percentage 0.1)))

(require 'dashboard)
(dashboard-setup-startup-hook)
(setq initial-buffer-choice (lambda () (switch-to-buffer "*dashboard*")))


(provide 'init)

;;; init.el ends here

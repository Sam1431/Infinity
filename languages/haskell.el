;;; Code:

(use-package haskell-mode
  :mode "\\.hs\\'"
  :defer t
  :init
  (add-hook 'haskell-mode-hook (defun my-haskell-setup ()
                                 (interactive)
                                 (my-enable-modes '(subword-mode
                                                    flycheck-mode
                                                    wrap-region-mode
                                                    electric-pair-mode
                                                    haskell-doc-mode
                                                    interactive-haskell-mode
                                                    haskell-indentation-mode))))

  :config
  (setq haskell-process-suggest-remove-import-lines  t
        haskell-process-auto-import-loaded-modules t
        haskell-process-log t
        haskell-stylish-on-save t))
 ;;  (bind-keys :map haskell-mode-map
 ;;             ("C-,"     . haskell-move-nested-left)
 ;;             ("C-."     . haskell-move-nested-right)
 ;;             ("C-c C-." . haskell-mode-format-imports)

 ;;             ("s-i"     . haskell-navigate-imports)

 ;;             ("C-c C-l" . haskell-process-load-or-reload)
 ;;             ("C-`"     . haskell-interactive-bring)
 ;;             ("C-c C-t" . haskell-process-do-type)
 ;;             ("C-c C-i" . haskell-process-do-info)
 ;;             ("C-c C-c" . haskell-process-cabal-build)
 ;;             ("C-c C-k" . haskell-interactive-mode-clear)
 ;;             ("C-c c"   . haskell-process-cabal)
 ;;             ("SPC"     . haskell-mode-contextual-space)))

(provide 'haskell)

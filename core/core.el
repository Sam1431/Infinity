;;; Code:

(add-to-list 'load-path "~/.emacs.d/core/infinity")
(add-to-list 'load-path "~/.emacs.d/core/directory")
(add-to-list 'load-path "~/.emacs.d/core/ui")
(add-to-list 'load-path "~/.emacs.d/core/keybind")
(add-to-list 'load-path "~/.emacs.d/core/settings")

(require 'directory)
(require 'settings)
(require 'infinity)
(require 'keybind)
(require 'core-ui)

(provide 'core)

;;; init.el ends here

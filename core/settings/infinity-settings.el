;; -*- lexical-binding: t; -*-
;;; Code:

(dolist (sym '(customize-option customize-browse customize-group customize-face
               customize-rogue customize-saved customize-apropos
               customize-changed customize-unsaved customize-variable
               customize-set-value customize-customized customize-set-variable
               customize-apropos-faces customize-save-variable
               customize-apropos-groups customize-apropos-options
               customize-changed-options customize-save-customized)))

(put 'customize 'disabled t)
(put 'customize-option 'disabled t)
(put 'customize-browse 'disabled t)
(put 'customize-group 'disabled t)
(put 'customize-face 'disabled t)
(put 'customize-rogue 'disabled t)
(put 'customize-saved 'disabled t)
(put 'customize-apropos 'disabled t)
(put 'customize-changed 'disabled t)
(put 'customize-unsaved 'disabled t)
(put 'customize-variable 'disabled t)
(put 'customize-set-value 'disabled t)
(put 'customize-customized 'disabled t)
(put 'customize-set-variable 'disabled t)
(put 'customize-apropos-faces 'disabled t)
(put 'customize-save-variable 'disabled t)
(put 'customize-apropos-groups 'disabled t)

(provide 'infinity-settings)

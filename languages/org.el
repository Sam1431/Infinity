;;; Code:

(use-package org)
(setq org-todo-keywords
        '((sequence
           "TODO(t)"
           "BLOG(b)"
           "GYM(g)"
           "PROJ(p)"
           "VIDEO(v)"
           "WAIT(w)"
           "|"
           "DONE(d)"
           "CANCELLED(c)" )))

(provide 'org)

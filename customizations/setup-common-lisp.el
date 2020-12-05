;; use clisp as the common lisp repl in emacs
(setq inferior-lisp-program "/usr/bin/clisp")

;; enable paredit for common lisp
(add-hook 'lisp-mode-hook #'enable-paredit-mode)

(provide 'setup-common-lisp)

;;; setup-emacs-lisp.el --- Configuration for Emacs Lisp
;;; Commentary:

;;; Code:
;; enable paredit with emacs lisp
(add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode)

(provide 'setup-emacs-lisp)
;;; setup-emacs-lisp.el ends here

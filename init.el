;;; init.el --- Iniitializes the Emacs configuration
;;; Commentary:

;;; Code:
;; set up packages
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(
    ;; on the fly linting of source code
    flycheck
    ;; make editing les painful with better parens
    paredit
    ;; make editing less painful with rainbows
    rainbow-delimiters
    ;; a common lisp editing mode for Emacs.
    slime
    ))

;; install packages that are not presently installed
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; add customizations folder to load path, then load files
(add-to-list 'load-path "~/.emacs.d/customizations")
(load "editing")
(load "setup-emacs-lisp")
(load "setup-common-lisp")
(load "ui")

(provide 'init)
;;; init.el ends here

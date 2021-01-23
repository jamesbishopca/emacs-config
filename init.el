;;; init.el --- Iniitializes the Emacs configuration
;;; Commentary:

;;; Code:
;; set up packages
(require 'package)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(add-to-list 'package-pinned-packages '(slime . "melpa-stable") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(
    ;; add clojure support to emacs
    clojure-mode
    ;; a clojure REPL inside of emacs
    cider
    ;; on the fly linting of source code
    flycheck
    ;; add markdown support to emacs
    markdown-mode
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
(load "miscellaneous")
(load "navigation")
(load "setup-clojure")
(load "setup-common-lisp")
(load "setup-emacs-lisp")
(load "ui")

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (markdown-mode zenburn-theme slime rainbow-delimiters paredit magit flycheck))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

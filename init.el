;; set up packages
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(
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
(load "setup-common-lisp")
(load "ui")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("c4cecd97a6b30d129971302fd8298c2ff56189db0a94570e7238bc95f9389cfb" default)))
 '(package-selected-packages (quote (slime))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

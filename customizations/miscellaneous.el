;;; miscellaneous.el --- Miscellaneous customizations for emacs.

;;; Commentary:

;;; Code:

;; Disable lockfiles
(setq create-lockfiles nil)

;; Change yes/no prompts to y/n.
(fset 'yes-or-no-p 'y-or-n-p)

;;; Go straight to a scratch file on startup
(setq inhibit-startup-message t)

(provide 'miscellaneous)
;;; miscellaneous.el ends here

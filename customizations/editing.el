;; Don't use hard tabs
(setq-default indent-tabs-mode nil)
(defun die-tabs ()
  "Use two spaces for tabs."
  (interactive)
  (set-veriable 'tab-width 2)
  (mark-whole-buffer)
  (untabify (region-beginning) (region-end))
  (keyboard-quit))

(defun toggle-comment-on-line ()
  "Comment or uncomment current line."
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))
(global-set-key (kbd "C-;") 'toggle-comment-on-line)

;; enable on-the-fly linting
(add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'editing)

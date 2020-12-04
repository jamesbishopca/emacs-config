;; Don't use hard tabs
(setq-default indent-tabs-mode nil)
(defun die-tabs ()
  "Use two spaces for tabs."
  (interactive)
  (set-veriable 'tab-width 2)
  (mark-whole-buffer)
  (untabify (region-beginning) (region-end))
  (keyboard-quit))

(provide 'editing)

;; disable menubar
(menu-bar-mode -1)

;; turn on line numbers
(global-linum-mode)

;; disable blinking cursor
(blink-cursor-mode 0)

;; no bells
(setq ring-bell-function 'ignore)

;; rainbows! :D
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; set theme
(load-theme 'zenburn t)

;; Highlights matching parenthesis
(show-paren-mode 1)

;; Highlight current line
(global-hl-line-mode 1)

(provide 'ui)

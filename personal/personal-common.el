(global-subword-mode)
(scroll-bar-mode -1)
(menu-bar-mode -1)

(show-paren-mode t) ; highlight matching parentheses

(global-set-key (kbd "s-c") 'compile)
(global-set-key (kbd "s-f") 'rgrep)

(set-face-attribute 'default nil :font "Source Code Pro" :height 120)


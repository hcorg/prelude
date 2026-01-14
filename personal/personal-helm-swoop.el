;(prelude-require-packages '(helm-swoop
;                            ))

(require 'helm)

(add-to-list 'load-path "~/.emacs.d/personal/helm-swoop")
(require 'helm-swoop)

(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
(global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
(global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)

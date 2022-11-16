(prelude-require-packages '(multiple-cursors
                            ))

(require 'multiple-cursors)

(setq mc/cmds-to-run-for-all
      '(
        c-electric-colon
        c-electric-delete-forward
        c-electric-semi&comma
        c-electric-slash
        c-electric-star
        c-hungry-delete-forward
        ))

(global-set-key (kbd "C-c m") 'mc/mark-all-like-this-dwim)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

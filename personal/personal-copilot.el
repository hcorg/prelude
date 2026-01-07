(prelude-require-packages '(copilot-chat
                            copilot
                            ))

(global-set-key (kbd "s-a") 'copilot-chat)

(add-hook 'prog-mode-hook 'copilot-mode)

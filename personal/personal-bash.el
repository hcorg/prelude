; why????? this should work...: (setenv "BASH_ENV" (expand-file-name "~/.bashrc"))

; https://stackoverflow.com/questions/10946219/emacs-compilation-mode-wont-see-bash-alias
(defadvice compile (around use-bashrc activate)
  "Load .bashrc in any calls to bash (e.g. so we can use aliases)"
  (let ((shell-command-switch "-ic"))
    ad-do-it))

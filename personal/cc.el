;; style settings
(defun my-cc-style ()
  (setq indent-tabs-mode nil
        c-indent-level 2
        c-basic-offset 2
        c-default-style "bsd")
  )

(add-hook 'cc-mode-hook 'my-cc-style)

(defun my-cxx-style ()
  (c-set-offset 'innamespace [0])
  )

(add-hook 'c++-mode-hook 'my-cxx-style)

(prelude-require-packages '(modern-cpp-font-lock))
(add-hook 'c++-mode-hook #'modern-c++-font-lock-mode)

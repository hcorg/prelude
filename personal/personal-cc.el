(prelude-require-packages '(cmake-mode
                            ))

;; headers as c++
(setq include-base-dir "/usr/include/")

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-ts-mode))
(add-to-list 'auto-mode-alist (cons include-base-dir 'c++-ts-mode))

(defun my-cc-whitespace ()
  (setq tab-width 2)
  (whitespace-toggle-options '(tabs tab-mark))
  )

;; doesn't work when added to cc-mode-hook
(add-hook 'c++-mode-hook 'my-cc-whitespace)
(add-hook 'c-mode-hook 'my-cc-whitespace)
(add-hook 'c++-ts-mode-hook 'my-cc-whitespace)
(add-hook 'c-ts-mode-hook 'my-cc-whitespace)

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
  (c-set-offset 'inextern-lang [0])
  )

(add-hook 'c++-mode-hook 'my-cxx-style)

(defun my-cc-ts-style ()
  (setq indent-tabs-mode nil
        c-ts-mode-indent-offset 2
        c-ts-mode-indent-style "bsd")
  )

(add-hook 'c-ts-mode-hook 'my-cc-ts-style)
(add-hook 'c++-ts-mode-hook 'my-cc-ts-style)

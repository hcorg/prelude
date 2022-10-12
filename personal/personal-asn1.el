;;; ASN.1 Mode

;(setq load-path (cons "~/emacs.d/personal/asn1-mode/" load-path))

(load "~/.emacs.d/personal/asn1-mode/asn1-mode")

(setq auto-mode-alist
      (cons '("\\.[Aa][Ss][Nn]\\([1]\\|[pP][pP]?\\)?$" . asn1-mode)
            auto-mode-alist))

(use-package json-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.json$" . json-mode)))

(provide 'setup-json)

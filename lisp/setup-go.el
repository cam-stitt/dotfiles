(defun my-go-mode-hook ()
  ; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save))

(use-package go-mode
  :ensure t
  :hook (go-mode-hook . my-go-mode-hook)
  :config
  (progn
    (setq gofmt-command "goimports")))

(use-package go-autocomplete
  :ensure t)

(provide 'setup-go)

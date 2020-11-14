(defun my-go-mode-hook ()
  ; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save))

(use-package go-mode
  :ensure t
  :hook (go-mode . my-go-mode-hook)
  :config
  (progn
    (setq gofmt-command "goimports")
    (add-hook 'go-mode-hook '(lambda ()
                               (setq fill-column 80)
                               (fci-mode 1)))))

(use-package go-autocomplete
  :ensure t)

(provide 'setup-go)

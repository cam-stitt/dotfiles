(defun my-go-mode-hook ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t)  )

(use-package go-mode
  :ensure t
  :hook (
         (go-mode . my-go-mode-hook)
         (go-mode . lsp-deferred)
         (go-mode . (lambda ()
                          (setq fill-column 80)
                          (fci-mode 1)))))

(use-package flycheck-golangci-lint
  :ensure t
  :hook (go-mode . flycheck-golangci-lint-setup))

(provide 'setup-go)

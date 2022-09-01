(defun my-go-mode-hook ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t)  )
  ;(setq lsp-client-go-server-args '("--format-style=\"goimports\"")))

(use-package go-mode
  :ensure t
  :hook (
         (go-mode . my-go-mode-hook)
         (go-mode . lsp-deferred)
         (go-mode . (lambda ()
                          (setq gofmt-command "goimports")
                          (setq fill-column 80)
                          (fci-mode 1)))))

(provide 'setup-go)

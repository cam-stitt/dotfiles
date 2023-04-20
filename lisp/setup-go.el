(defun my-eglot-organize-imports () (interactive)
       (eglot-code-actions nil nil "source.organizeImports" t))

(defun eglot-organize-imports-on-save ()
  (add-hook 'before-save-hook #'my-eglot-organize-imports nil t))

(defun eglot-format-buffer-on-save ()
  (add-hook 'before-save-hook #'eglot-format-buffer -10 t))

(use-package go-mode
  :ensure t
  :hook (
         (go-mode . eglot-organize-imports-on-save)
         (go-mode . eglot-format-buffer-on-save)
         (go-mode . eglot-ensure)
         (go-mode . (lambda ()
                          (setq fill-column 80)
                          (fci-mode 1)))))

(use-package flycheck-golangci-lint
  :ensure t
  :hook (go-mode . flycheck-golangci-lint-setup))

(provide 'setup-go)

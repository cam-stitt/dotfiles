(defun my-yaml-mode-hook ()
  (define-key yaml-mode-map "\C-m" 'newline-and-indent))

(use-package yaml-mode
  :ensure t
  :hook
  (yaml-mode-hook . my-yaml-mode-hook)
  :init
  (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode)))

(provide 'setup-yaml)

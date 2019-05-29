(use-package ansible
  :ensure t
  :init
  (setq ansible::vault-password-file "~/.vault-pass"))

(add-hook 'yaml-mode-hook '(lambda () (ansible 1)))

(provide 'setup-ansible)

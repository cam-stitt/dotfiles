(unless (package-installed-p 'ansible)
  (package-install 'ansible))
(package-initialize)

(setq ansible::vault-password-file "~/.vault-pass")

(add-hook 'yaml-mode-hook '(lambda () (ansible 1)))

(provide 'setup-ansible)

(unless (package-installed-p 'company)
  (package-install 'company))
(package-initialize)

(add-hook 'after-init-hook 'global-company-mode)

(provide 'setup-company-mode)

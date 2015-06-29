(unless (package-installed-p 'company)
  (package-install 'company))
(package-initialize)

(require 'company-mode)

(add-hook 'after-init-hook 'global-company-mode)

(provide 'setup-company-mode)

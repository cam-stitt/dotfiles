(unless (package-installed-p 'feature-mode)
  (package-install 'feature-mode))
(package-initialize)

(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

(provide 'setup-feature)

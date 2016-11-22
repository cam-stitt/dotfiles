(unless (package-installed-p 'auto-complete)
  (package-install 'auto-complete))
(package-initialize)

(provide 'setup-auto-complete)

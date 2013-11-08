(unless (package-installed-p 'yasnippet)
  (package-install 'yasnippet))

(require 'yasnippet)
(yas-global-mode 1)

(provide 'setup-yasnippet)

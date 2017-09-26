(unless (package-installed-p 'json-mode)
  (package-install 'json-mode))
(package-initialize)

(require 'json-mode)

(provide 'setup-json-mode)

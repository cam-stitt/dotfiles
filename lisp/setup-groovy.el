(unless (package-installed-p 'groovy-mode)
  (package-install 'groovy-mode))
(package-initialize)

(require 'groovy-mode)

(provide 'setup-groovy)

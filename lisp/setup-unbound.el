(unless (package-installed-p 'unbound)
  (package-install 'unbound))
(package-initialize)

(require 'unbound)

(provide 'setup-unbound)

(unless (package-installed-p 'fill-column-indicator)
  (package-install 'fill-column-indicator))

(require 'fill-column-indicator)

(provide 'setup-fci)

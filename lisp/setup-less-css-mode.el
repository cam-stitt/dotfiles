(unless (package-installed-p 'less-css-mode)
  (package-install 'less-css-mode))
(package-initialize)

(require 'less-css-mode)

;(setq css-indent-offset 2)

(provide 'setup-less-css-mode)

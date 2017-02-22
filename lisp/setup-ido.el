(unless (package-installed-p 'ido)
  (package-install 'ido))

(require 'ido)
(ido-mode t)

(provide 'setup-ido)

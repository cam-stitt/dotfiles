(unless (package-installed-p 'magit)
  (package-install 'magit))

(require 'magit)

(setq magit-last-seen-setup-instructions "2.6.0")

(provide 'setup-magit)

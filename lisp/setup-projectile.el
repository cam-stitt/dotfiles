(unless (package-installed-p 'projectile)
  (package-install 'projectile))

(require 'projectile)

(projectile-global-mode)

(provide 'setup-projectile)

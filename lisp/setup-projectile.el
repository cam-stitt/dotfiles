; list the packages you want
(setq package-list '(projectile helm-projectile))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))
(package-initialize)

(require 'projectile)

(projectile-global-mode)

(provide 'setup-projectile)

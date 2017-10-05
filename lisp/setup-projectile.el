; list the packages you want
(setq package-list '(projectile helm-projectile))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))
(package-initialize)

(require 'projectile)
(require 'helm-projectile)

(projectile-mode)
(helm-projectile-on)

(provide 'setup-projectile)

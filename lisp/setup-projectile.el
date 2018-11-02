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

(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(helm-projectile-on)

(provide 'setup-projectile)

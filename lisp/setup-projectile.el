(use-package projectile
  :ensure t
  :bind (:map projectile-mode-map
              ("s-p" . projectile-command-map)
              ("C-c p" . projectile-command-map))
  :config
  (projectile-mode 1))

(use-package counsel-projectile
    :ensure t
    :config
    (counsel-projectile-mode 1))

(provide 'setup-projectile)

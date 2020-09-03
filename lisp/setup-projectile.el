(use-package projectile
  :ensure t
  :bind (("s-p" . projectile-command-map)
         ("C-c p" . projectile-command-map))
  :config
  (use-package helm-projectile
    :ensure t))

(provide 'setup-projectile)

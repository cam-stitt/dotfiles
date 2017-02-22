(unless (package-installed-p 'neotree)
  (package-install 'neotree))
(package-initialize)

(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

(global-set-key [f8] 'neotree-toggle)

(provide 'setup-neotree)

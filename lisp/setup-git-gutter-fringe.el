(setq git-gutter-packages '(fringe-helper git-gutter git-gutter-fringe))

(dolist (value git-gutter-packages)
  (unless (package-installed-p value)
    (package-install value))
  (package-initialize))

(require 'git-gutter-fringe)

(global-git-gutter-mode)

(provide 'setup-git-gutter-fringe)

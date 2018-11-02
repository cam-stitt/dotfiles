(setq git-gutter-packages '(git-gutter))

(dolist (value git-gutter-packages)
  (unless (package-installed-p value)
    (package-install value))
  (package-initialize))

(require 'git-gutter)

(global-git-gutter-mode t)

(custom-set-variables
 '(git-gutter:window-width 2)
 '(git-gutter:modified-sign "~~")
 '(git-gutter:added-sign "++")
 '(git-gutter:deleted-sign "--"))

(provide 'setup-git-gutter)

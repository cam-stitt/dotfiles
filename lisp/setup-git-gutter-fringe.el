;;; setup-git-gutter-fringe.el --- setup for git-gutter-fringe
;;; Commentary:
;; This adds a git gutter to emacs!

;;; Code:
(setq git-gutter-packages '(fringe-helper git-gutter git-gutter-fringe))

(dolist (value git-gutter-packages)
  (unless (package-installed-p value)
    (package-install value))
  (package-initialize))

(require 'git-gutter-fringe)

(global-git-gutter-mode)

(provide 'setup-git-gutter-fringe)
;;; setup-git-gutter-fringe.el ends here

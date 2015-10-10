;;; setup-git-gutter-fringe.el --- setup for git-gutter-fringe
;;; Commentary:
;; This adds a git gutter to emacs!

;;; Code:
(unless (package-installed-p 'git-gutter-fringe)
  (package-install 'git-gutter-fringe))
(package-initialize)

(require 'git-gutter-fringe)

(provide 'setup-git-gutter-fringe)
;;; setup-git-gutter-fringe.el ends here

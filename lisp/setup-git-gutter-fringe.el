;;; setup-git-gutter-fringe.el --- setup for git-gutter-fringe
;;; Commentary:
;; This adds a git gutter to emacs!

;;; Code:
(add-to-list 'load-path "~/.emacs.d/vendor/fringe-helper/")
(add-to-list 'load-path "~/.emacs.d/vendor/git-gutter/")
(add-to-list 'load-path "~/.emacs.d/vendor/git-gutter-fringe/")

(require 'git-gutter-fringe)

(global-git-gutter-mode)

(provide 'setup-git-gutter-fringe)
;;; setup-git-gutter-fringe.el ends here

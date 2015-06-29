;(setq tomorrow-theme-directory (concat user-emacs-directory "Themes/GNU Emacs"))
(setq base16-theme-directory (concat user-emacs-directory "Themes/GNU Emacs/base16-emacs"))

(add-to-list 'load-path base16-theme-directory)

;;(require 'tomorrow-night-theme)
(require 'base16-default-theme)

(setq-default indent-tabs-mode nil)

(add-to-list 'default-frame-alist
	     '(font . "Ubuntu Mono-14"))

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

(setq js-indent-level 2)

(provide 'appearance)

(setq tomorrow-theme-directory (concat user-emacs-directory "Themes/GNU Emacs"))

(setq-default indent-tabs-mode nil)

(add-to-list 'load-path tomorrow-theme-directory)

(require 'tomorrow-night-theme)

(add-to-list 'default-frame-alist
	     '(font . "Ubuntu Mono-13"))

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

(setq js-indent-level 2)

(provide 'appearance)

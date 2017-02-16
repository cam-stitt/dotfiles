(setq theme-directory (concat user-emacs-directory "Themes/GNU Emacs"))
(setq aurora-theme-directory (concat theme-directory "/aurora"))
(setq base16-theme-directory (concat theme-directory "/base16-emacs"))
(setq base16-build-theme-directory (concat theme-directory "/base16-emacs/build"))

(add-to-list 'load-path aurora-theme-directory)
(add-to-list 'load-path base16-theme-directory)
(add-to-list 'load-path base16-build-theme-directory)
(require 'base16-embers-theme)
;(require 'aurora-theme)

;(unless (package-installed-p 'ample-theme)
;  (package-install 'ample-theme))
;(load-theme 'ample-flat t t)
;(enable-theme 'ample-flat)

(setq-default indent-tabs-mode nil)

(add-to-list 'default-frame-alist
	     '(font . "Go Mono-14"))

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

(provide 'appearance)

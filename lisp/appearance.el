(setq theme-directory (concat user-emacs-directory "Themes/GNU Emacs"))
(setq aurora-directory (concat theme-directory "/aurora-theme"))
;(setq base16-theme-directory (concat user-emacs-directory "Themes/GNU Emacs/base16-emacs"))
(add-to-list 'load-path aurora-directory)
(require 'aurora-theme)
;;(require 'tomorrow-night-theme)
;(require 'base16-default-theme)

;(unless (package-installed-p 'ample-theme)
;  (package-install 'ample-theme))
;(load-theme 'ample-flat t t)
;(enable-theme 'ample-flat)

(setq-default indent-tabs-mode nil)

(add-to-list 'default-frame-alist
	     '(font . "Go Mono-14"))

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

(setq js-indent-level 2)

(provide 'appearance)

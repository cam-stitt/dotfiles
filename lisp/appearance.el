(setq theme-directory (concat user-emacs-directory "Themes/GNU Emacs"))
(setq current-theme-directory (concat theme-directory "/aurora"))
(add-to-list 'load-path current-theme-directory)
(require 'aurora-theme)

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

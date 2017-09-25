(let ((default-directory (concat user-emacs-directory "Themes/GNU Emacs/")))
  (normal-top-level-add-subdirs-to-load-path))

(require 'base16-embers-theme)
;(require 'aurora-theme)

;(unless (package-installed-p 'ample-theme)
;  (package-install 'ample-theme))
;(load-theme 'ample-flat t t)
;(enable-theme 'ample-flat)

(setq-default indent-tabs-mode nil)

(add-to-list 'default-frame-alist
	     '(font . "Ubuntu Mono-16"))

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

(provide 'appearance)

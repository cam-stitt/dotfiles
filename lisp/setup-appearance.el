(let ((default-directory (concat user-emacs-directory "Themes/GNU Emacs/")))
  (normal-top-level-add-subdirs-to-load-path))

(unless (package-installed-p 'base16-theme)
  (package-install 'base16-theme))
(package-initialize)

(load-theme 'base16-solarized-light t)
;(require 'base16-embers-theme)
;(require 'aurora-theme)

(setq-default indent-tabs-mode nil)

(add-to-list 'default-frame-alist
	     '(font . "Ubuntu Mono-16"))

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

(provide 'setup-appearance)

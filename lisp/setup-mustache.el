(add-to-list 'load-path "~/.emacs.d/vendor/mustache-mode.el")
(require 'mustache-mode)

(add-to-list 'auto-mode-alist '("\\.hogan$" . mustache-mode))

(provide 'setup-mustache)

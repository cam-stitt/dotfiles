(unless (package-installed-p 'rhtml-mode)
  (package-install 'rhtml-mode))

(require 'rhtml-mode)

(add-to-list 'auto-mode-alist '("\\.erb$" . rhtml-mode))

(provide 'setup-rhtml-mode)

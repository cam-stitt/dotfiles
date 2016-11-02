(unless (package-installed-p 'dockerfile-mode)
  (package-install 'dockerfile-mode))
(package-initialize)

(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

(provide 'setup-dockerfile)

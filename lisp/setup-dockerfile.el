(unless (package-installed-p 'dockerfile-mode)  ;; Make sure the dockerfile-mode package is
  (package-install 'dockerfile-mode))           ;; installed, install it if not
(package-initialize)                ;; Initialize & Install Package

(require 'dockerfile-mode)

(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

(provide 'setup-dockerfile)

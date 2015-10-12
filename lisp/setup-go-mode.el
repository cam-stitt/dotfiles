(unless (package-installed-p 'go-mode)
  (package-install 'go-mode))
(package-initialize)

(require 'go-mode-autoloads)

(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))

(setenv "GOPATH" "$HOME/go")

(provide 'setup-go-mode)

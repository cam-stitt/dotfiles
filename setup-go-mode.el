(add-to-list 'load-path "~/.emacs.d/vendor/go-mode")

(require 'go-mode-load)

(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))

(setenv "GOPATH" "/Users/stittc/go")

(provide 'setup-go-mode)

(add-to-list 'load-path "~/.emacs.d/vendor/go-mode")

(require 'go-mode-load)

(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))

(provide 'setup-go-mode)

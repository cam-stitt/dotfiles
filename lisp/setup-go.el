(setq go-mode-packages '(go-mode go-eldoc))

(dolist (value go-mode-packages)
  (unless (package-installed-p value)
    (package-install value))
  (package-initialize))

(require 'go-eldoc)

(defun my-go-mode-hook ()
  ; Use goimports instead of go-fmt
  (setq gofmt-command "goimports")
  ; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet"))
  ; Godef jump key binding
  (local-set-key (kbd "M-.") 'godef-jump)
  (go-eldoc-setup))
(add-hook 'go-mode-hook 'my-go-mode-hook)

(provide 'setup-go)

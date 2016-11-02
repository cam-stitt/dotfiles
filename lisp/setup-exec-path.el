(unless (package-installed-p 'exec-path-from-shell)
  (package-install 'exec-path-from-shell))

(package-initialize)

(require 'exec-path-from-shell)

(setq exec-path-from-shell-arguments '("-l"))
(add-to-list 'exec-path-from-shell-variables '"GOPATH")

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(provide 'setup-exec-path)

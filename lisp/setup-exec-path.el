(unless (package-installed-p 'exec-path-from-shell)
  (package-install 'exec-path-from-shell))
(package-initialize)

(require 'exec-path-from-shell)

(setq exec-path-from-shell-arguments '("-l"))
;(exec-path-from-shell-copy-env "GOPATH")
;(exec-path-from-shell-copy-env "PATH")
;(add-to-list 'exec-path-from-shell-variables '"GOPATH")
;(add-to-list 'exec-path-from-shell-variables '"PATH")

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(provide 'setup-exec-path)

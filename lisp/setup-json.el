(unless (package-installed-p 'json-mode)
  (package-install 'json-mode))
(package-initialize)

(require 'json-mode)

(add-to-list 'auto-mode-alist '("\\.json$" . json-mode))

(provide 'setup-json)

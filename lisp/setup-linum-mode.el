(unless (package-installed-p 'linum)
  (package-install 'linum))
(package-initialize)

(require 'linum)

(global-linum-mode 1)
;(add-hook 'js2-mode-hook 'linum-mode)

;(add-hook 'python-mode-hook 'linum-mode)

;(add-hook 'web-mode-hook 'linum-mode)

(provide 'setup-linum-mode)

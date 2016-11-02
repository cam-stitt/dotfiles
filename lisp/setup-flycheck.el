(unless (package-installed-p 'flycheck)
  (package-install 'flycheck))

(require 'flycheck)

(add-hook 'after-init-hook 'global-flycheck-mode)

;; Highlight whole line with error
(setq flycheck-highlighting-mode 'lines)

(provide 'setup-flycheck)

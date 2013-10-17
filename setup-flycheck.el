(add-hook 'after-init-hook 'global-flycheck-mode)

;; Highlight whole line with error
(setq flycheck-highlighting-mode 'lines)

(provide 'setup-flycheck)

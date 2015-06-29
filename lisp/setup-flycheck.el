(unless (package-installed-p 'flycheck)
  (package-install 'flycheck))

(require 'flycheck)

(add-hook 'after-init-hook 'global-flycheck-mode)

;; Highlight whole line with error
(setq flycheck-highlighting-mode 'lines)

(flycheck-define-checker jsxhint-checker
  "A JSX syntax and style checker based on JSXHint."

  :command ("jsxhint" source)
  :error-patterns
  ((error line-start (1+ nonl) ": line " line ", col " column ", " (message) line-end))
  :modes (jsx-mode))
(add-hook 'jsx-mode-hook (lambda ()
                          (flycheck-select-checker 'jsxhint-checker)
                          (flycheck-mode)))

(provide 'setup-flycheck)

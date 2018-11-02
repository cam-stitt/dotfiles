(unless (package-installed-p 'flycheck)
  (package-install 'flycheck))

(require 'flycheck)

(add-hook 'after-init-hook 'global-flycheck-mode)

(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
          '(javascript-jshint)))

(flycheck-add-mode 'javascript-eslint 'web-mode)

;; customize flycheck temp file prefix
(setq-default flycheck-temp-prefix ".flycheck")

;; Highlight whole line with error
(setq flycheck-highlighting-mode 'lines)

(provide 'setup-flycheck)

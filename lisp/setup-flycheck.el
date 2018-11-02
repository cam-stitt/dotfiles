(unless (package-installed-p 'flycheck)
  (package-install 'flycheck))

(require 'flycheck)

(add-hook 'after-init-hook 'global-flycheck-mode)

(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
          '(javascript-jshint)))

;;; eslint support
(flycheck-add-mode 'javascript-eslint 'web-mode)

;; use local eslint from node_modules before global
;; http://emacs.stackexchange.com/questions/21205/flycheck-with-file-relative-eslint-executable
(defun my-use-eslint-from-node-modules ()
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint (and root
                      (expand-file-name "node_modules/.bin/eslint"
                                        root))))
    (when (and eslint (file-executable-p eslint))
      (setq-local flycheck-javascript-eslint-executable eslint))))
(add-hook 'flycheck-mode-hook 'my-use-eslint-from-node-modules)

;; customize flycheck temp file prefix
(setq-default flycheck-temp-prefix ".flycheck")

;; Highlight whole line with error
(setq flycheck-highlighting-mode 'lines)

(provide 'setup-flycheck)

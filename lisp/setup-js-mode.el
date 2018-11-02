(unless (package-installed-p 'js2-mode)
  (package-install 'js2-mode))

(require 'js2-mode)

;;(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
;;(add-to-list 'auto-mode-alist '("\\.json$" . js2-mode))
;(add-hook 'web-mode-hook 'js2-minor-mode)
(setq js-indent-level 2)
(setq-default js2-basic-offset 2)

(defun my-js2-mode-hook ()
  (setq indent-tabs-mode nil)
  (flycheck-mode +1))

(add-hook 'js2-mode-hook 'my-js2-mode-hook)

(provide 'setup-js-mode)

(unless (package-installed-p 'js2-mode)
  (package-install 'js2-mode))

(require 'js2-mode)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
;(add-to-list 'auto-mode-alist '("\\.json$" . js2-mode))

(setq-default js2-basic-offset 2)

(defun my-disable-indent-tabs-mode ()
  (setq indent-tabs-mode nil))

(add-hook 'js2-mode-hook 'my-disable-indent-tabs-mode)

(provide 'setup-js-mode)

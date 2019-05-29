(defun my-js2-mode-hook ()
  (setq indent-tabs-mode nil)
  (flycheck-mode +1))

(use-package js2-mode
  :ensure t
  :config
  (progn
    (setq js-indent-level 2)
    (setq-default js2-basic-offset 2)
    (add-hook 'js2-mode-hook 'my-js2-mode-hook))

(provide 'setup-js-mode)

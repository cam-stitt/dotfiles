(defun my-css-mode-hook ()
  (rainbow-mode 1))

(use-package rainbow-mode
  :ensure t
  :hook ((css-mode web-mode) . my-css-mode-hook))

(provide 'setup-rainbow-mode)

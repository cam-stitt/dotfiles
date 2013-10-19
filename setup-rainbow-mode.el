;;; setup-rainbow-mode.el --- setup for minor rainbow-mode
;;; Commentary:
;; This highlights any color with the actual color!

;;; Code:
(unless (package-installed-p 'rainbow-mode)  ;; Make sure the Org package is
  (package-install 'rainbow-mode))           ;; installed, install it if not
(package-initialize)                ;; Initialize & Install Package

(require 'rainbow-mode)

(add-hook 'css-mode-hook 'my-css-mode-hook)
(defun my-css-mode-hook ()
  (rainbow-mode 1))

(provide 'setup-rainbow-mode)
;;; setup-rainbow-mode.el ends here

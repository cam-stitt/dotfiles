;;; setup-rainbow-mode.el --- setup for minor rainbow-mode
;;; Commentary:
;; This highlights any color with the actual color!

;;; Code:
(require 'rainbow-mode)

(add-hook 'css-mode-hook 'my-css-mode-hook)
(defun my-css-mode-hook ()
  (rainbow-mode 1))

(provide 'setup-rainbow-mode)
;;; setup-rainbow-mode.el ends here

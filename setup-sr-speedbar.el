;;; setup-sr-speedbar.el --- setup sr-speedbar for folders
;;; Commentary:

;;; Code:
(require 'sr-speedbar)

(setq speedbar-use-images nil)
(setq speedbar-show-unknown-files t)
(setq sr-speedbar-auto-refresh 0)
(setq sr-speedbar-width-x 20)
(setq sr-speedbar-max-width 20)

(global-set-key (kbd "C-c C-t") 'sr-speedbar-toggle)

(when window-system
  (sr-speedbar-open))

;(with-current-buffer sr-speedbar-buffer-name
;  (setq window-size-fixed 'width))

(provide 'setup-sr-speedbar)
;;; setup-sr-speedbar.el ends here

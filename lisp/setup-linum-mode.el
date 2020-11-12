;(use-package nlinum
;  :ensure t
;  :hook ((prog-mode . nlinum-mode)
;         (text-mode . nlinum-mode))
;  :config
;  (progn
;    (setq nlinum-format " %d \u2502 ")))

(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

(provide 'setup-linum-mode)

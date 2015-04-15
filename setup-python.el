(require 'python)

(add-hook 'python-mode-hook '(lambda ()
			 (setq fill-column 80)
			 (flycheck-mode 1)
			 (fci-mode 1)))

(provide 'setup-python)

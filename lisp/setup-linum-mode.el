(require 'linum)

(add-hook 'js2-mode-hook 'linum-mode)

(add-hook 'python-mode-hook 'linum-mode)

(add-hook 'less-css-mode-hook 'linum-mode)

(add-hook 'web-mode-hook 'linum-mode)

(provide 'setup-linum-mode)

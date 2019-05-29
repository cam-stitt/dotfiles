(use-package nlinum
  :ensure t
  :hook ((prog-mode . nlinum-mode)
         (text-mode . nlinum-mode)))

(provide 'setup-linum-mode)

(use-package yafolding
  :ensure t
  :hook (prog-mode . yafolding-mode)
  :bind ("s-d y" . yafolding-discover))

(provide 'setup-yafolding)

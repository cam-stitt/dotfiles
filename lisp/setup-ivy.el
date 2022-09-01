(use-package counsel
  :diminish ivy-mode
  :ensure t
  :bind (("C-s" . swiper-isearch))
  :config
  (counsel-mode)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  (setq ivy-height 10))

(provide 'setup-ivy)

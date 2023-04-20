(use-package corfu
  :ensure t
  :demand t
  :custom
  (corfu-auto t)
  :init
  (global-corfu-mode))

(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

(provide 'setup-corfu)

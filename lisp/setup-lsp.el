(use-package lsp-mode
  :ensure t
  :commands lsp
  :hook prog-mode)

(use-package lsp-ivy
  :commands lsp-ivy-workspace-symbol)

(use-package dap-mode
   :ensure t
   :defer
   :custom
   (dap-auto-configure-mode t)
   (dap-auto-configure-features '(sessions locals controls tooltip))
   :config
   (require 'dap-dlv-go))

(provide 'setup-lsp)

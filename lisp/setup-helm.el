(use-package helm
  :ensure t)
(use-package helm-config)

(use-package helm
  :bind (("M-x" . helm-M-x)
         ("C-x C-f" . helm-find-files)
         ("C-x r b" . helm-filtered-bookmarks)
         ("C-x b" . helm-mini)
         :map helm-command-map
         ([tab] . helm-execute-persistent-action)
         ("C-i" . helm-execute-persistent-action)
         ("C-z" . helm-select-action))
  :config
  (helm-autoresize-mode 1)
  (helm-mode 1))

(provide 'setup-helm)

(unless (package-installed-p 'helm)
  (package-install 'helm))
(package-initialize)

(require 'helm)
(require 'helm-config)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(global-set-key (kbd "C-x b") #'helm-mini)

;(setq helm-autoresize-max-height 10)
;(setq helm-autoresize-min-height 10)
(helm-autoresize-mode 1)

(helm-mode 1)

(provide 'setup-helm)

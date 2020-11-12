;;; init.el --- my setup for emacs
;;; Commentary:


;;; Code:
(require 'gnutls)
(add-to-list 'gnutls-trustfiles "/usr/local/etc/openssl/cert.pem")
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please
(setq inhibit-startup-message t)

;; Set path to dependencies
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/vendor")

;; Backup and auto-save directory setup
(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups"))))
(setq auto-save-file-name-transforms
      `((".*" ,(concat user-emacs-directory "auto-save") t)))

;; Delete old backup files
(message "Deleting old backup files...")
(let ((week (* 60 60 24 7))
      (current (float-time (current-time))))
  (dolist (file (directory-files (concat user-emacs-directory "backups") t))
    (when (and (backup-file-name-p file)
               (> (- current (float-time (nth 5 (file-attributes file))))
                  week))
      (message "%s" file)
      (delete-file file))))

(global-set-key (kbd "M-[") 'insert-pair)
(global-set-key (kbd "M-{") 'insert-pair)
(global-set-key (kbd "M-\"") 'insert-pair)

(require 'package)
; list the repositories containing them
                                        ;(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/") t)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(package-initialize)

;; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

(global-auto-revert-mode t)

; Electric pair ftw
(electric-pair-mode t)

(require 'setup-appearance)

(require 'setup-use-package)

;(require 'setup-ansible)

(require 'setup-coverage)

(require 'setup-exec-path)

(require 'setup-auto-complete)

(require 'setup-helm)

;(require 'setup-groovy) ;mostly needed for jenkins files

;(require 'setup-graphql)

;;;;;(require 'setup-ido)

;;;;;(require 'setup-company-mode)

(require 'setup-dockerfile)

(require 'setup-fci)

(require 'setup-go)

;;;;;(require 'setup-icons)

(require 'setup-json)

;;;;;(require 'setup-less-css-mode)

(require 'setup-linum-mode)

; git-gutter must come after linum
(require 'setup-git-gutter)

(require 'setup-handlebars)

;;;;;(require 'setup-neotree)

(require 'setup-treemacs)

(require 'setup-magit)

(require 'setup-markdown)

(require 'setup-org)

(require 'setup-projectile)

(require 'setup-proto)

(require 'setup-python)

(require 'setup-rainbow-mode)

(require 'setup-unbound)

(require 'setup-web-mode)

; js-mode requires web-mode
;(require 'setup-js-mode)

(require 'setup-flycheck)

(require 'setup-windmove)

(require 'setup-yasnippet)

(require 'setup-yaml)

(setq custom-file "~/.emacs.d/custom.el")
(load-file custom-file)

;;; init ends here

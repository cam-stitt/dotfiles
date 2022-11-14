;;; init.el --- my setup for emacs
;;; Commentary:

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

;; auto revert
(global-auto-revert-mode t)

;; pairs
(global-set-key (kbd "M-[") 'insert-pair)
(global-set-key (kbd "M-{") 'insert-pair)
(global-set-key (kbd "M-\"") 'insert-pair)
; Electric pair ftw
(electric-pair-mode t)

(require 'package)
; list the repositories containing them
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(package-initialize)

;; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

(require 'setup-use-package)

(require 'setup-appearance)

(require 'setup-diminish)

(require 'setup-exec-path)

(require 'setup-direnv)

(require 'setup-ivy)

(require 'setup-corfu)

;; must be after 'ivy
(require 'setup-projectile)

(require 'setup-windmove)

(require 'setup-go)

(require 'setup-lsp)

(require 'setup-fci)

(require 'setup-display-line-numbers)

; git-gutter must come after linum
(require 'setup-diff-hl)

(require 'setup-sidebar)

(require 'setup-magit)

(require 'setup-nix)

(require 'setup-dockerfile)

(require 'setup-markdown)

(require 'setup-org)

(require 'setup-rainbow-mode)

(require 'setup-web-mode)

(require 'setup-yasnippet)

(require 'setup-yafolding)

(require 'setup-yaml)

(require 'setup-hcl)

(setq custom-file "~/.emacs.d/custom.el")
(load-file custom-file)

(put 'set-goal-column 'disabled nil)

;;; init ends here

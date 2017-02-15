;;; init.el --- my setup for emacs
;;; Commentary:


;;; Code:
;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please ... jeez
(setq inhibit-startup-message t)

(defun ad-advised-definition-p (definition)
  "Return non-nil if DEFINITION was generated from advice information."
  (if (or (ad-lambda-p definition)
	  (macrop definition)
	  (ad-compiled-p definition))
      (let ((docstring (ad-docstring definition)))
	(and (stringp docstring)
	     (get-text-property 0 'dynamic-docstring-function docstring)))))

;; Set path to dependencies
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/vendor")

;; Backup and auto-save directory setup
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Delete old backup files
(message "Deleting old backup files...")
(let ((week (* 60 60 24 7))
      (current (float-time (current-time))))
  (dolist (file (directory-files temporary-file-directory t))
    (when (and (backup-file-name-p file)
               (> (- current (float-time (nth 5 (file-attributes file))))
                  week))
      (message "%s" file)
      (delete-file file))))

(global-set-key (kbd "M-[") 'insert-pair)
(global-set-key (kbd "M-{") 'insert-pair)
(global-set-key (kbd "M-\"") 'insert-pair)

(require 'package) ;; You might already have this line
; list the repositories containing them
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize) ;; You might already have this line

;; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

(global-auto-revert-mode t)

;; testify
(fset 'testify
     (lambda (&optional arg) "Converts test words into actual test functions.
  
  Converts something like `has token is 200` into `def
  test_has_token_is_200(self):\n\tpass` so I can easily type out my
  python test methods."
       (interactive "p") (kmacro-exec-ring-item (quote ([100 101 102 32 116 101 115 116 95 67108896 5 134217765 32 return 95 return 33 5 40 115 101 108 102 41 58 return 32 32 32 32 112 97 115 115 return 14 1] 0 "%d")) arg)))

(require 'appearance)

(require 'setup-exec-path)

;(require 'setup-auto-complete)

(require 'setup-helm)

(require 'setup-company-mode)

(require 'setup-dockerfile)

(require 'setup-fci)

(require 'setup-flycheck)

(require 'setup-git-gutter-fringe)

(require 'setup-go)

(require 'setup-js-mode)

;(require 'setup-less-css-mode)

(require 'setup-linum-mode)

(require 'setup-neotree)

(require 'setup-magit)

;(require 'setup-markdown)

;(require 'setup-org)

(require 'setup-projectile)

(require 'setup-proto)

(require 'setup-python)

(require 'setup-rainbow-mode)

;(require 'setup-rinari)

;(require 'setup-smex)

(require 'setup-unbound)

(require 'setup-web-mode)

(require 'setup-windmove)

(require 'setup-yasnippet)

(require 'setup-yaml)

(setq css-indent-offset 2)

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (exec-path-from-shell ample-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

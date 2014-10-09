;;; init.el --- my setup for emacs
;;; Commentary:


;;; Code:
;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please ... jeez
(setq inhibit-startup-message t)

;; Set path to dependencies
(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path "~/.emacs.d/vendor")

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(global-set-key (kbd "M-[") 'insert-pair)
(global-set-key (kbd "M-{") 'insert-pair)
(global-set-key (kbd "M-\"") 'insert-pair)

(require 'setup-packages)

(require 'exec-path-from-shell)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(global-auto-revert-mode t)

(require 'appearance)

(require 'ido)
(ido-mode t)

(require 'setup-windmove)

(require 'setup-web-mode)

(require 'setup-js-mode)

(require 'setup-less-css-mode)

(require 'setup-flycheck)

(require 'setup-fci)

(require 'setup-python)

(require 'setup-org)

(require 'setup-markdown)

(require 'setup-rainbow-mode)

;(require 'setup-company-mode)

(require 'setup-go-mode)

(require 'setup-sr-speedbar)

(require 'setup-magit)

(require 'setup-rinari)

(require 'setup-rhtml-mode)

(require 'setup-projectile)

(require 'setup-unbound)

(require 'setup-linum-mode)

(require 'setup-yasnippet)

(require 'setup-handlebars)

(require 'setup-mustache)

(fset 'testify
     (lambda (&optional arg) "Converts test words into actual test functions.
  
  Converts something like `has token is 200` into `def
  test_has_token_is_200(self):\n\tpass` so I can easily type out my
  python test methods."
       (interactive "p") (kmacro-exec-ring-item (quote ([100 101 102 32 116 101 115 116 95 67108896 5 134217765 32 return 95 return 33 5 40 115 101 108 102 41 58 return 32 32 32 32 112 97 115 115 return 14 1] 0 "%d")) arg)))


;;; init.el ends here

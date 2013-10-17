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

(require 'setup-packages)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(global-auto-revert-mode t)

(require 'appearance)

(require 'ido)
(ido-mode t)

(require 'setup-web-mode)

(require 'setup-js-mode)

(require 'setup-less-css-mode)

(require 'setup-flycheck)

(require 'setup-fci)

(require 'setup-python)

(require 'setup-org)

(require 'setup-markdown)

(require 'setup-rainbow-mode)

;;; init.el ends here

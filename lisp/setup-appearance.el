(let ((basedir "~/.emacs.d/themes/"))
      (dolist (f (directory-files basedir))
        (if (and (not (or (equal f ".") (equal f "..")))
                 (file-directory-p (concat basedir f)))
            (add-to-list 'custom-theme-load-path (concat basedir f)))))

;(use-package base16-theme
;  :ensure t
;  :init
;  (setq base16-theme-256-color-source 'base16-shell)
;  :config
;  (load-theme 'base16-twilight t))

(load-theme 'acme t)

(let ((line (face-attribute 'mode-line :underline)))
    (set-face-attribute 'mode-line          nil :overline   line)
    (set-face-attribute 'mode-line-inactive nil :overline   line)
    (set-face-attribute 'mode-line-inactive nil :underline  line)
    (set-face-attribute 'mode-line          nil :box        nil)
    (set-face-attribute 'mode-line-inactive nil :box        nil)
    (set-face-attribute 'mode-line-inactive nil :background "#ffffea"))

(setq-default indent-tabs-mode nil)

(add-to-list 'default-frame-alist
	     '(font . "Hack-14"))

(setq inhibit-startup-screen t)

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time

(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling

(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse

(setq scroll-step 1) ;; keyboard scroll one line at a time

;; have dired show directories before files
(setq dired-listing-switches "-aBhl  --group-directories-first")

;; auto indentation
(electric-indent-mode t)

;; Scroll bar, acme style
(scroll-bar-mode 1)

;; custom faces for acme theme
;; (custom-set-faces
;;  ;; web-mode
;;  `(web-mode-html-tag-face ((t (:foreground ,"#000000"))))
;;  `(web-mode-html-tag-custom-face ((t (:foreground, "#000000"))))
;;  `(web-mode-html-attr-name-face ((t (:foreground ,"#000000"))))
;;  `(web-mode-json-key-face ((t (:foreground ,"#000000"))))
;;  `(web-mode-json-string-face ((t (:foreground ,"#000000"))))
;;  `(web-mode-json-key-face ((t (:foreground ,"#000000"))))
;;  `(web-mode-json-context-face ((t (:foreground ,"#000000"))))
;;  )

(provide 'setup-appearance)

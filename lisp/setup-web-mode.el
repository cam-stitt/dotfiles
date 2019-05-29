(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-style-padding 2)
  (setq web-mode-script-padding 2)
;  (setq web-mode-disable-auto-pairing t)
  (setq web-mode-enable-css-colorization t)
  (flycheck-mode +1)
  ; use single quotes
  (setq web-mode-auto-quote-style 2)
  (setq web-mode-content-types-alist (("javascript" . "\\.js.njk\\'"))))

(use-package web-mode
  :ensure t
  :hook (web-mode-hook . my-web-mode-hook)
  :init
  (progn
    (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.js[x]\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
    (add-to-list 'auto-mode-alist '("\\.svelte\\'" . web-mode))
    (add-to-list 'write-file-functions 'delete-trailing-whitespace)))

(provide 'setup-web-mode)

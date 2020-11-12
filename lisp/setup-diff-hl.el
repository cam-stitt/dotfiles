(fringe-mode 16)

(use-package diff-hl
  :ensure t
  :config
  (progn
    (setq-default diff-hl-side 'right)
    (setq-default diff-hl-draw-borders nil)
    (global-diff-hl-mode)
    (set-face-attribute 'diff-hl-insert
                        nil
                        :foreground "#073642"
                        :background "#859900")
    (set-face-attribute 'diff-hl-delete
                        nil
                        :foreground "#073642"
                        :background "#dc322f")
    (set-face-attribute 'diff-hl-change
                        nil
                        :background "#b58900"
                        :foreground "#073642")))

(provide 'setup-diff-hl)

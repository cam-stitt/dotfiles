(let ((basedir "~/.emacs.d/themes/"))
      (dolist (f (directory-files basedir))
        (if (and (not (or (equal f ".") (equal f "..")))
                 (file-directory-p (concat basedir f)))
            (add-to-list 'custom-theme-load-path (concat basedir f)))))

(load-theme 'solarized t)

(setq-default indent-tabs-mode nil)

(add-to-list 'default-frame-alist
	     '(font . "Hack-14"))

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

(provide 'setup-appearance)

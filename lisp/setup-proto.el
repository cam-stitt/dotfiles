(setq proto-mode-packages '(cc-mode cl protobuf-mode))

(dolist (value proto-mode-packages)
  (unless (package-installed-p value)
    (package-install value))
  (package-initialize))

(provide 'setup-proto)

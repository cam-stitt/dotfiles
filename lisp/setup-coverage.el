(unless (package-installed-p 'coverlay)
  (package-install 'coverlay))
(package-initialize)

(setq coverlay:tested-line-background-color "")
(setq coverlay:untested-line-background-color "#AB425E")

(provide 'setup-coverage)

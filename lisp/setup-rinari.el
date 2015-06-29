(unless (package-installed-p 'rinari)
  (package-install 'rinari))

(require 'rinari)

(provide 'setup-rinari)

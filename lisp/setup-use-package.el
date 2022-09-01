(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)

(use-package use-package-ensure-system-package
  :ensure t)

(provide 'setup-use-package)

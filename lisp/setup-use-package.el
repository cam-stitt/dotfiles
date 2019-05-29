(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(package-initialize)

(require 'use-package)

(provide 'setup-use-package)
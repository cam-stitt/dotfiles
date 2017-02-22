(require 'font-lock+)

(unless (package-installed-p 'all-the-icons)
  (package-install 'all-the-icons))
(package-initialize)

(require 'all-the-icons)

(provide 'setup-icons)

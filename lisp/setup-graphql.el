(unless (package-installed-p 'graphql-mode)
  (package-install 'graphql-mode))
(package-initialize)

(require 'graphql-mode)

(provide 'setup-graphql)

(unless (package-installed-p 'org)
  (package-install 'org))
(package-initialize)

(require 'org)

(setq org-todo-keywords
       '((sequence "TODO" "IN PROGRESS" "|" "DONE" "DELEGATED")))

(provide 'setup-org)

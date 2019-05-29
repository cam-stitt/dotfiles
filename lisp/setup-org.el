(use-package org
  :ensure t
  :init
  (setq org-todo-keywords
       '((sequence "TODO" "IN PROGRESS" "|" "DONE" "DELEGATED"))))

(provide 'setup-org)

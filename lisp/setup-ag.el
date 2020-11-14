(use-package ag
  :if (eq system-type 'darwin)
  :ensure t
  :ensure-system-package (ag . "brew install the_silver_surfer"))

(use-package ag
  :if (eq system-type 'linux)
  :ensure t
  :ensure-system-package (ag . "apt-get install silversearcher-ag"))

(provide 'setup-ag)

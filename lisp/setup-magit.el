(use-package magit
  :ensure t)

(setenv "GPG_AGENT_INFO" nil)
; be sure to prompt for gpg
;(setq epg-pinentry-mode 'loopback)

(provide 'setup-magit)

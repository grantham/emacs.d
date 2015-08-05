; turn on company mode everywhere
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
;(define-key ac-mode-map  [(control tab)] 'auto-complete)
(add-to-list 'company-backends 'company-c-headers)


;(setq org-mobile-directory "/scp:grantham@ssh.hcoop.net:org")
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)
(visual-line-mode t)
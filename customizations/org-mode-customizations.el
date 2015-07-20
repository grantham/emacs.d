;(setq org-mobile-directory "/scp:grantham@ssh.hcoop.net:org")
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(define-key global-map "\C-cl" 'org-store-link)
(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)
(setq org-log-done t)
(setq org-agenda-files (list "~/commonplace/diary.org"
                             "~/commonplace/diary/01_2015.org"
                             "~/commonplace/diary/02_2015.org"
                             "~/commonplace/diary/03_2015.org"
                             "~/commonplace/diary/04_2015.org"
                             "~/commonplace/diary/05_2015.org"
))
(add-hook 'org-mode-hook 'turn-on-visual-line-mode)
;; Flyspell
;; http://www.emacswiki.org/emacs/FlySpell
(dolist (hook '(org-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))

;(setq org-mobile-directory "/scp:grantham@ssh.hcoop.net:org")
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(define-key global-map "\C-cl" 'org-store-link)
(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)
(setq org-log-done t)
(setq org-agenda-files (list "~/commonplace/diary.org"
                             "~/commonplace/diary/2016_01.org"
                             "~/commonplace/diary/2016_02.org"
                             "~/commonplace/diary/2016_03.org"
                             "~/commonplace/diary/2016_04.org"
                             "~/commonplace/diary/2016_05.org"
                             "~/commonplace/diary/2016_06.org"
                             "~/commonplace/diary/2016_07.org"
                             "~/commonplace/diary/2016_08.org"
                             "~/commonplace/diary/2016_09.org"
                             "~/commonplace/diary/2016_10.org"
                             "~/commonplace/diary/2016_11.org"
                             "~/commonplace/diary/2016_12.org"
))
(add-hook 'org-mode-hook 'turn-on-visual-line-mode)
;; Flyspell
;; http://www.emacswiki.org/emacs/FlySpell
(dolist (hook '(org-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))

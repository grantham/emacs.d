;;
;; LISP setup
;;

(add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")

(require 'slime)
(add-hook 'lisp-mode-hook (lambda () (slime-mode t)))
(add-hook 'inferior-lisp-mode-hook (lambda () (inferior-slime-mode t)))
(setq slime-net-coding-system 'utf-8-unix)

;; hyperspec
(setq common-lisp-hyperspec-root
      "file:///usr/share/doc/hyperspec/")
    
(setq common-lisp-hyperspec-symbol-table
      "/usr/share/doc/hyperspec/Data/Map_Sym.txt")


;; Optionally, specify the lisp program you are using. Default is "lisp"
(setq inferior-lisp-program "/usr/bin/sbcl"
      slime-path (expand-file-name "/usr/share/emacs/site-lisp/slime/") 
      w3m-command "/usr/bin/w3m" 
      cltl2-url "file:///usr/share/doc/cltl/clm/node1.html"
      hyperspec-prog (concat slime-path "hyperspec")
      hyperspec-path "/usr/share/doc/hyperspec/")


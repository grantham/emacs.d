; turn on company mode everywhere
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
;(define-key ac-mode-map  [(control tab)] 'auto-complete)
(add-to-list 'company-backends 'company-c-headers)

;; If you want to complete C++ header files, you have to add its paths
;; since by default company-c-headers only includes these two system
;; include paths: /usr/include/ and /usr/local/include/. To enable C++
;; header completion for standard libraries, you have to add its path,
;; for example, like this:
;; (add-to-list 'company-c-headers-path-system "/usr/include/c++/4.8/")


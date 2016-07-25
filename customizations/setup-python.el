;;
;; Python setup 
;; https://www.emacswiki.org/emacs/PythonProgrammingInEmacs

(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

;; 
;;
;; Elpy
;; Full documentation on usage here: https://elpy.readthedocs.io/en/latest/index.html
;;
;; For setup, see: https://github.com/jorgenschaefer/elpy
;;
;; 
;; #
;; # Either of these
;; pip3 install rope
;; pip3 install jedi
;; # flake8 for code checks
;; pip3 install flake8
;; # importmagic for automatic imports
;; pip3 install importmagic
;; # and autopep8 for automatic PEP8 formatting
;; pip3 install autopep8
;; # and yapf for code formatting
;; pip3 install yapf

;; Evaluate this in your *scratch* buffer:
;; 
;; (require 'package)
;; (add-to-list 'package-archives
;;              '("elpy" . "https://jorgenschaefer.github.io/packages/"))
;; 
;; Then run M-x package-refresh-contents to load the contents of the new repository

;;
;; Now restart emacs. Presumably elpy-enable will do the work of
;; installing other emacs packages for us.
;;
(elpy-enable)

;;
;; Set up python unit testing
;;

;;
;; First install these packages:
;;
;; pip3 install pytest
;; 
;;

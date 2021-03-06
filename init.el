(setenv "PATH" (concat (getenv "PATH") ":~/bin"))
(setq exec-path (append exec-path '("~/bin")))

;;;;
;; Packages
;;;;

;; Define package repositories
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;;                          ("marmalade" . "http://marmalade-repo.org/packages/")
;;                          ("melpa" . "http://melpa-stable.milkbox.net/packages/")))


;; Load and activate emacs packages. Do this first so that the
;; packages are loaded before you start trying to modify them.
;; This also sets the load path.
(package-initialize)

;; Download the ELPA archive description if needed.
;; This informs Emacs about the latest versions of all packages, and
;; makes them available for download.
(when (not package-archive-contents)
  (package-refresh-contents))

;; For C / C++ setup information, see:
;; http://tuhdo.github.io/c-ide.html


;; The packages you want installed. You can also install these
;; manually with M-x package-install
;; Add in your own as you wish:
(defvar my-packages
  '(;; makes handling lisp expressions much, much easier
    ;; Cheatsheet: http://www.emacswiki.org/emacs/PareditCheatsheet
    paredit

    ;; key bindings and code colorization for Clojure
    ;; https://github.com/clojure-emacs/clojure-mode
    clojure-mode

    ;; extra syntax highlighting for clojure
    clojure-mode-extra-font-locking

    ;; integration with a Clojure REPL
    ;; https://github.com/clojure-emacs/cider
    cider

    ;;
    ;; Python integration
    ;;
    python-mode
    elpy
    ;; pytest -- provided by elpy I think
    ;; realgud ;; interactive debugging may be provided by elpy

    ; modest CMake support
    cmake-mode
    
    ;; company mode -- autocompletion
    company
    company-c-headers
    ;(add-to-list 'company-backends 'company-c-headers)

    ;; arg complection for C++
    function-args

    ggtags

    ;; allow ido usage in as many contexts as possible. see
    ;; customizations/navigation.el line 23 for a description
    ;; of ido
    ido-ubiquitous

    ;; Enhances M-x to allow easier execution of commands. Provides
    ;; a filterable list of possible commands in the minibuffer
    ;; http://www.emacswiki.org/emacs/Smex
    smex
    
    ;; project navigation
    projectile

    ;; puppet mode
    ;;puppet-mode

    ;; not sure if the flymake-puppet plugin is needed
    flymake-puppet

    ;; colorful parenthesis matching
    rainbow-delimiters

    ;; block matching
    ;rainbow-blocks
    
    ;; speedbar
    sr-speedbar
    
    ;; edit html tags like sexps
    tagedit

    ;; git integration
    magit

    ;; markdown
    markdown-mode

    ;; company mode
    ;;company-mode
))

;; On OS X, an Emacs instance started from the graphical user
;; interface will have a different environment than a shell in a
;; terminal window, because OS X does not run a shell during the
;; login. Obviously this will lead to unexpected results when
;; calling external utilities like make from Emacs.
;; This library works around this problem by copying important
;; environment variables from the user's shell.
;; https://github.com/purcell/exec-path-from-shell
(if (eq system-type 'darwin)
    (progn
      (add-to-list 'my-packages 'exec-path-from-shell)
      (setq ns-pop-up-frames 'nil)))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))


;; Place downloaded elisp files in ~/.emacs.d/vendor. You'll then be able
;; to load them.
;;
;; For example, if you download yaml-mode.el to ~/.emacs.d/vendor,
;; then you can add the following code to this file:
;;
;; (require 'yaml-mode)
;; (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
;; 
;; Adding this code will make Emacs enter yaml mode whenever you open
;; a .yml file
(add-to-list 'load-path "~/.emacs.d/vendor")


;;;;
;; Customization
;; 
;; turn on server mode
;;(server-mode t)
(server-start)

;; Add a directory to our load path so that when you `load` things
;; below, Emacs knows where to look for the corresponding file.
(add-to-list 'load-path "~/.emacs.d/customizations")

;; Sets up exec-path-from-shell so that Emacs will use the correct
;; environment variables
(load "shell-integration.el")

;;
;; tools
;;
;; company-mode
(load "company-mode-setup.el")
(load "setup-cmake.el")

;; These customizations make it easier for you to navigate files,
;; switch buffers, and choose options from the minibuffer.
(load "navigation.el")

;; These customizations change the way emacs looks and disable/enable
;; some user interface elements
(load "ui.el")

;; These customizations make editing a bit nicer.
(load "editing.el")
(load "org-mode-customizations.el")
(load "setup-markdown-mode.el")

;; Hard-to-categorize customizations
(load "misc.el")
(load "setup-company.el")
(load "setup-sr-speedbar.el")
(load "setup-semantic.el")

;; For editing lisps
(load "elisp-editing.el")

;; ggtags
(load "setup-ggtags.el")

;; Langauage-specific
(load "setup-function-args.el") ;; C++ specific
(load "setup-clojure.el")
(load "setup-js.el")
(load "setup-ruby.el")
(load "setup-python.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(coffee-tab-width 2)
 '(show-paren-mode t)
 '(tool-bar-mode nil))

;;
;; Mardown mode: markdown-mode.el
;;
;; see http://jblevins.org/projects/markdown-mode/ for docs
;;
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

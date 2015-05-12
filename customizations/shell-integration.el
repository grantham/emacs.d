;; Sets up exec-path-from shell
;; https://github.com/purcell/exec-path-from-shell
;(setenv "PATH" (concat (getenv "PATH") ":~/bin"))
;(setq exec-path (append exec-path '("~/bin")))
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-envs
   '("PATH")))

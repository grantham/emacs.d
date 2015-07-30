(require 'cc-mode)
(require 'semantic)

(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)

(semantic-mode 1)

;; To add more include paths, for example Boost include paths, 
;; use the function semantic-add-system-include like so:
;;
;; (semantic-add-system-include "/usr/include/boost" 'c++-mode)
;; (semantic-add-system-include "~/linux/kernel")
;; (semantic-add-system-include "~/linux/include")

;; company-semantic



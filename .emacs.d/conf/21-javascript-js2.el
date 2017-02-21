;; via: http://codewinds.com/blog/2015-04-02-emacs-flycheck-eslint-jsx.html

;; use rjsx-mode for .jsx files
;; rjsx-mode derives from js2-jsx-mode
;; https://github.com/felipeochoa/rjsx-mode
(add-to-list 'auto-mode-alist '("\\.jsx$" . rjsx-mode))

;; customize js2-mode
;;(setq js2-parse-ide-mode nil)
(setq js2-mode-show-parse-errors nil)
(setq js2-mode-show-strict-warnings nil)

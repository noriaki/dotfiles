;; インデントを2に設定
(defun noriaki/set-indent-json-mode-hooks ()
  (make-local-variable 'js-indent-level)
  (setq js-indent-level 2))
(add-hook 'json-mode-hook 'noriaki/set-indent-json-mode-hooks)

(add-hook 'json-mode-hook 'noriaki/align-rules-list-for-javascript)

;; javascript
(add-to-list 'auto-mode-alist '("\\.eslintrc.*$" . json-mode))
(add-to-list 'auto-mode-alist '("\\.babelrc$" . json-mode))

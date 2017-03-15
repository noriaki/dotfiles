(setq-default c-basic-offset 2)
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; functions: conf/20-functions-flycheck-eslint.el
(add-hook 'js2-mode-hook
          'kui/flycheck-set-checker-executable-from-node-modules)
(add-hook 'js2-mode-hook #'flycheck-mode)

;; settings: conf/11-align.el
(add-hook 'js2-mode-hook
          'noriaki/align-rules-list-for-javascript)

;; electric-pair-mode: auto close bracket insertion
(defun noriaki/electric-js2-mode-hook ()
  "Auto close bracket insertion"
  (electric-pair-mode t))
(add-hook 'js2-mode-hook 'noriaki/electric-js2-mode-hook)

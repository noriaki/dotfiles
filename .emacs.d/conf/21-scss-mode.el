(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.\\(scss\\|css\\)\\'" . scss-mode))

(defun noriaki/custom-scss-mode-hooks ()
  "scss-mode-hook"
  (set (make-local-variable 'css-indent-offset) 2))
(add-hook 'scss-mode-hook 'noriaki/custom-scss-mode-hooks)

;; 自動コンパイルをオフにする
(setq scss-compile-at-save nil)

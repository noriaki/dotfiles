;; redo+
;; (require 'redo+) ; no `require` into 'init-loader
(global-set-key (kbd "C-?") 'redo)

;; 過去のundoをredoしない
;(setq undo-no-redo t)
(setq undo-limit 600000)
(setq undo-strong-limit 900000)

;; 操作しないと自動的にバッファを保存する
(require 'auto-save-buffers-enhanced)

;; 5秒間操作が無ければ保存
(setq auto-save-buffers-enhanced-interval 5)

;; Git管理されているファイルのみ対象とする
(auto-save-buffers-enhanced-include-only-checkout-path t)

;; 有効化
(auto-save-buffers-enhanced t)

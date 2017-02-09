;;; C-hをBSに
(global-set-key (kbd "C-h") 'backward-delete-char)
;;; 元々のC-hをM-?へ変更
(global-set-key (kbd "M-?") 'help-for-help)
;; ESC 連打で無効化
(global-set-key (kbd "M-ESC ESC") 'keyboard-quit)
;; RET key
(global-set-key (kbd "C-m") 'newline)
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-j") 'smart-newline)

;; https://github.com/ncaq/.emacs.d/blob/master/profile/20_global-set-key.el
(global-set-key (kbd "C-'") 'auto-complete)

;; align (see also 21-XXX-mode's align-rules-list)
(global-set-key (kbd "C-x ;") 'align)
(global-set-key (kbd "C-x :") 'align-regexp)

;; C-TAB, C-S-TAB, to change buffer window
;; see: 11-split-window.el
(global-set-key (kbd "C-TAB") 'other-window-or-split)
(global-set-key (kbd "C-S-TAB") (lambda () (other-window -1)))

;; C-x C-r to interactive mode change window size
;; see: 11-resize-window.el
;; via: http://d.hatena.ne.jp/khiker/20100119/window_resize
(global-set-key (kbd "C-x C-r") 'noriaki/window-resizer)

;; C-z のサスペンド機能を無効化
(global-unset-key (kbd "C-z"))

;; better dired-mode
(require 'dired)
;; ファイル名だけの表示を可能に
(define-key dired-mode-map (kbd "(") 'dired-hide-details-mode)
(define-key dired-mode-map (kbd ")") 'dired-hide-details-mode)

;; 小さな dired-mode のウインドウを作る
;; C-x d, C-x C-d で開き C-g で閉じる。ウインドウ内ではファイル名のみ表示
(require 'dired-toggle)
(setq-default dired-toggle-window-size 30) ;; 幅を少し広く
(global-set-key (kbd "C-x d") 'dired-toggle)
(global-set-key (kbd "C-x C-d") 'dired-toggle)
(define-key dired-toggle-mode-map (kbd "C-g") 'dired-toggle-action-quit)
(defun noriaki/hide-dired-toggle-mode-hooks () (dired-hide-details-mode t))
(defun noriaki/show-dired-toggle-mode-hooks () (dired-hide-details-mode -1))
(add-hook 'dired-toggle-mode-hook 'noriaki/hide-dired-toggle-mode-hooks)
(advice-add
 'dired-toggle-action-quit :before 'noriaki/show-dired-toggle-mode-hooks)

;; Mac環境の場合Commandキーをメタキーへ変更
(when (eq system-type 'darwin)
  (setq ns-command-modifier (quote meta)))

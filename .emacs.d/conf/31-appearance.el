;; Menuを隠す
(custom-set-variables
 '(display-time-mode t)
 '(tool-bar-mode nil)
 '(menu-bar-mode nil)
 '(transient-mark-mode t)
 '(toggle-scroll-bar nil)) ; スクロールバーを消す
(custom-set-faces
 '(default ((t (:background nil)))))

;; 対応括弧をハイライト
(show-paren-mode 1)

;; 対応括弧の色設定
(setq show-paren-style 'mixed)
(set-face-background 'show-paren-match-face "grey")
(set-face-foreground 'show-paren-match-face "black")

;; オープニングメッセージ非表示
(setq inhibit-startup-message t)

;; 改行コードを表示する
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;; 行,カラム番号表示
(line-number-mode t)
(column-number-mode t)

;; エラー音OFF
(setq ring-bell-function 'ignore)

;; 言語設定
(set-language-environment "Japanese")
(set-locale-environment nil)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)

;; ユーザー情報
(setq user-full-name "Noriaki Uchiyama")
(setq user-mail-address "uchiyama.noriaki@gmail.com")

;; ログ記録件数変更
(setq message-log-max 10000)

;; 履歴保存数変更
(setq history-length 1000)

;; バッファ自動再読み込み
(global-auto-revert-mode 1)

;; .gz対応
(auto-compression-mode t)

;; 常に補完を利用
(icomplete-mode t)

;; save-buffer 時，buffer 末尾に空行が常にあるように
(setq require-final-newline t)

;; Emacs の質問を y/n に
(fset 'yes-or-no-p 'y-or-n-p)

;; 補完時に大文字小文字を区別しない
(setq completion-ignore-case t)
(setq read-buffer-completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;; シンボリックリンクを開くときの質問省略
(setq vc-follow-symlinks t)

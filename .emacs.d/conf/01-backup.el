;; バックアップとオートセーブファイルを~/.emacs.d/backup/へ集める
(setq make-backup-files t)
(add-to-list 'backup-directory-alist
             (cons "." "~/.emacs.d/backup/"))
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "~/.emacs.d/backup/") t)))

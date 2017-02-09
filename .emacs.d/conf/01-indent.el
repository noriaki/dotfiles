;; 自動インデントOFF
(electric-indent-mode -1)
;; インデントをスペースに
(setq-default indent-tabs-mode nil)
;; 基本インデント幅を2に
(setq-default tab-width 2)

;; (C-M-\) 選択リージョンのインデントを揃えるキーバインド
;; リージョン未選択時はバッファ全体をインデントする
;;; via: http://qiita.com/AnchorBlues/items/2e216f730c1e9b84a593#comment-d23eae62b88b3125a45b
(defun all-indent ()
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max))))

(defun electric-indent ()
  "Indent specified region.
When resion is active, indent region.
Otherwise indent whole buffer."
  (interactive)
  (if (use-region-p)
      (indent-region (region-beginning) (region-end))
    (all-indent)))

(global-set-key (kbd "C-M-\\") 'electric-indent)

;; humanize file size
(custom-set-variables
 '(dired-listing-switches "-alh"))

;; dired-filter
(defun dired-mode-hooks ()
  (dired-filter-mode)
(add-hook 'dired-mode-hook 'dired-mode-hooks)

(defun other-window-or-split ()
  (interactive)
  (when (one-window-p)
    (split-window-horizontally)) ;split horizontally
  (other-window 1))

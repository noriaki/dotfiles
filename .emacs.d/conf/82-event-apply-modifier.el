;;; Terminal版でCtrl+Shiftを受け付けるmodifierを定義
;;; (iTerm2) Send Hex Codes: 0x18 0x40 0x43
;;;  via: http://d.akinori.org/2012/01/02/%E3%82%BF%E3%83%BC%E3%83%9F%E3%83%8A%E3%83%AB%E3%81%AEemacs%E3%81%A7%E3%82%82%E7%89%B9%E6%AE%8A%E3%82%AD%E3%83%BC%E3%82%B3%E3%83%B3%E3%83%9C/
(defun event-apply-control-shift-modifier (ignore-prompt)
  "\\Add the Control+Shift modifier to the following event.
For example, type \\[event-apply-control-shift-modifier] SPC to enter Control-Shift-SPC."
  (vector (event-apply-modifier
           (event-apply-modifier (read-event) 'shift 25 "S-")
           'control 26 "C-")))
(define-key function-key-map (kbd "C-x @ C") 'event-apply-control-shift-modifier)

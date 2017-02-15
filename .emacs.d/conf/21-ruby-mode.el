(autoload 'ruby-mode "ruby-mode" "Mode for editing ruby source files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))

(when (require 'ruby-mode nil t)
  (defun my/ruby-mode-hook-function ()
    (setq ruby-deep-indent-paren-style nil)
    (setq ruby-deep-indent-paren nil)
    (make-local-variable 'ac-ignore-case)
    (setq ac-ignore-case nil))
  (defun noriaki/electric-ruby-mode-hooks ()
    (electric-pair-mode t)
    (defvar ruby-electric-pairs '((?| . ?|)) "Electric pairs for ruby-mode.")
    (setq-local electric-pair-pairs (append electric-pair-pairs ruby-electric-pairs))
    (setq-local electric-pair-text-pairs electric-pair-pairs))
  (add-hook 'ruby-mode-hook 'my/ruby-mode-hook-function)
  (add-hook 'ruby-mode-hook 'noriaki/electric-ruby-mode-hooks))

;; 閉じ括弧の変なインデントを直す
;; via http://qiita.com/hiconyan/items/582e27128decfe9d249e
(defadvice ruby-indent-line (after unindent-closing-paren activate)
  (let ((column (current-column))
        indent offset)
    (save-excursion
      (back-to-indentation)
      (let ((state (syntax-ppss)))
        (setq offset (- column (current-column)))
        (when (and (eq (char-after) ?\))
                   (not (zerop (car state))))
          (goto-char (cadr state))
          (setq indent (current-indentation)))))
    (when indent
      (indent-line-to indent)
      (when (> offset 0) (forward-char offset)))))


;; flycheck
(defun noriaki/flycheck-ruby-mode-hooks ()
  (setq flycheck-checker 'ruby-rubocop)
  (setq flycheck-check-syntax-automatically
        '(idle-change mode-enabled new-line save))
  (flycheck-mode t))
(add-hook 'ruby-mode-hook 'noriaki/flycheck-ruby-mode-hooks)

;; ruby-block
;; (require 'ruby-block) ; no `require` into 'init-loader
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

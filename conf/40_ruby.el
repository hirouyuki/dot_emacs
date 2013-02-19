; ruby settings
(defun ruby-insert-end()
  (interactive)
  (insert "end")
  (ruby-indent-line t)
  (end-of-line))

;; ruby-mode
(require 'ruby-mode)
(require 'ruby-electric)
;(add-hook 'ruby-mode-hook (lambda ()
;    (smartparens-global-mode -1)
;    (ruby-electric-mode t)
;    (electric-indent-mode -1)
;    (electric-pair-mode -1)))
;;(define-key ruby-mode-map "\C-m" 'ruby-reindent-then-newline-and-indent)

(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))

;(setq ruby-indent-level 2
;      ruby-deep-indent-paren-style nil
;      ruby-indent-tabs-mode t)

;; ruby-block.el
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)











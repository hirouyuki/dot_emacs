;; M-i でdabbrev
(define-key global-map (kbd "M-i") 'dabbrev-expand)

;; C-x k は current-buffer 専用にしちゃう
(defun kill-current-buffer ()
  (interactive)
  (kill-buffer))
(define-key global-map (kbd "C-x k") 'kill-current-buffer)
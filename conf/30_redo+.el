;;; redo+.el
;; kbd -> C-.
(when (require 'redo+ nil t)
  (define-key global-map (kbd "C-.") 'redo))
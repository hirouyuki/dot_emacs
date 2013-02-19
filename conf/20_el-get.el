;; el-get setting
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path (concat user-emacs-directory "recipes"))

(el-get 'sync
    '(el-get
      powerline
      redo+
      auto-save-buffers-enhanced
      helm
      auto-complete
      smartparens
      expand-region
      flymake
      flycheck
      direx
      magit
      markdown-mode
      haml-mode
      js2-mode
    ))










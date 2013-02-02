;; load-path を追加する関数を定義
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))

;; elisp と conf ディレクトリをサブディレクトリごと load-path に追加
(add-to-load-path "elisp" "conf")

;; init-loader
(require 'init-loader)
(init-loader-load "~/.emacs.d/conf")
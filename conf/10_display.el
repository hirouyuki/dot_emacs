;; スタートアップメッセージを非表示
(setq inhibit-startup-screen t)

;; テーマ読み込み
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes/"))
(load-theme 'me t)


;; バックアップファイルを作らないようにする
(setq make-backup-files nil)
;; 自動保存したファイルを削除する
(setq delete-auto-save-files t)
;; 自動セーブしない
(setq auto-save-default nil)

;; ビジュアルベル無効
(setq visible-bell nil)
;; ビープ音も無効
(setq ring-bell-function '(lambda ()))

;; yes or no を y or n に
(fset 'yes-or-no-p 'y-or-n-p)

;;; 文字コードと言語を設定する
;; 言語設定
(set-language-environment "Japanese")
(prefer-coding-system           'utf-8-unix)
(setq                           default-buffer-file-coding-system 'utf-8)
(set-buffer-file-coding-system  'utf-8)
(set-terminal-coding-system     'utf-8)
(set-keyboard-coding-system     'utf-8)
(set-clipboard-coding-system    'utf-8)
;; MacOSX
(require 'ucs-normalize)
(setq file-name-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)

;; 起動時から global-auto-revert-mode を有効にする
(global-auto-revert-mode 1)
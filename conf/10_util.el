;; start server
(require 'server)
(unless (server-running-p)
  (server-start))


;; 履歴の数を設定
(setq history-length 10000)
;; ミニバッファの履歴を保存する
(savehist-mode 1)
;; 最近開いたファイルを保存する数を設定
(setq recentf-max-saved-items 10000)

;; 補完の時の大文字と小文字を区別しない
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)
;; 補完可能なものを随時表示 (今後offにするかも)
(icomplete-mode 1)

;; ウィンドウの上部に現在の関数名を表示する
(which-func-mode 1)

;; リージョンをC-hで削除
(delete-selection-mode 1)

;; % で対応する括弧に移動
(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))
(define-key global-map (kbd "%") 'match-paren)

;; 色つける
(require 'font-lock)
(global-font-lock-mode t)
(setq-default transient-mark-mode t)

;; 一行ずつスクロール
(setq scroll-step 1)

;; 縦分割とかでも行を折り返す
(setq truncate-partial-width-windows nil)
;; 折り返しトグル
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)

;; recenf-mode
(recentf-mode t)

;; local-variables safe なのは自動で適用
(setq enable-local-variables :safe)
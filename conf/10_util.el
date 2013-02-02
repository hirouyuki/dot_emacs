;; start server
(require 'server)
;(when (not (eq t (server-running-p server-name)))
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
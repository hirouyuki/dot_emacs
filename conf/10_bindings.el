;;; キーバインド設定
;; "C-m" に newline-and-indent を割り当てる。初期値は newline
;;(define-key global-map (kbd "C-m") 'newline-and-indent)

;; "C-h" を BS<del> とする
(keyboard-translate ?\C-h ?\C-?)

;; カーソール位置前後が空白であれば空白削除 (zshと同じ挙動)
(global-set-key "\C-w" 'backward-kill-word)

;; 別のキーバインドにヘルプを割り当てる
(global-set-key (kbd "C-x ?") 'help-command)

;; 指定行へ移動
(global-set-key (kbd "M-g") 'goto-line)

;; indent-region
(global-set-key (kbd "C-S-i") 'indent-region)

;; 正規表現置換
(global-set-key (kbd "C-M-r") 'replace-regexp)
(global-set-key (kbd "C-r") 'replace-string)

;; C-Ret で矩形選択
(cua-mode t)
(setq cua-enable-cua-keys nil)

;; Mark set
(global-set-key (kbd "C-;") 'set-mark-command)

;; コメントアウト設定
(setq comment-style 'multi-line)
(global-set-key (kbd "C-c ;") 'comment-or-uncomment-region)

;; undo
(global-set-key (kbd "C-/") 'undo)

;;; ウインドウ関係
;; "M-k" でカレントバッファを閉じる。初期値は kill-sentence
(define-key global-map (kbd "M-k") 'kill-this-buffer)
;; "C-t" でウィンドウを切り替える。初期値は transpose-chars
;;(define-key global-map (kbd "C-t") 'other-window)
;; Mac の command + → でウィンドウを左右に分割
(define-key global-map (kbd "s-<right>") 'split-window-horizontally)
;; Mac の command + ↓ でウィンドウを上下に分割
(define-key global-map (kbd "s-<donw>") 'split-window-vertically)
;; Mac の command + w で現在のウィンドウを削除
(define-key global-map (kbd "s-w") 'delete-window)
;; C-t でother-window、分割されてなかったら分割
(defun other-window-or-split () ; http://d.hatena.ne.jp/rubikitch/20100210/emacs
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window 1))
(define-key global-map (kbd "C-t") 'other-window-or-split)

;; M-i でdabbrev
(define-key global-map (kbd "M-i") 'dabbrev-expand)

;; C-x k は current-buffer 専用にしちゃう
(defun kill-current-buffer ()
  (interactive)
  (kill-buffer))
(define-key global-map (kbd "C-x k") 'kill-current-buffer)

;; "M-h"で後ろの単語を削除できるようにする
(defun kill-word-or-delete-horizontal-space (arg)
  (interactive "p")
  (let ((pos (point)))
    (if (and (not (eobp))
             (= (char-syntax (char-after pos)) 32)
             (= (char-syntax (char-after (1+ pos))) 32))
        (prog1 (delete-horizontal-space)
          (unless (memq (char-after pos) '(?( ?) ?{ ?} ?[ ?]))
            (insert " ")))
      (kill-word arg))))
(global-set-key (kbd "M-h") 'kill-word-or-delete-horizontal-space)

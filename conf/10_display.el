;; テーマ読み込み
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes/"))
(load-theme 'me t)

;; スタートアップメッセージを非表示
(setq inhibit-startup-screen t)
;; スクロールバーを非表示
(scroll-bar-mode 0)
;; tool-barを非表示。
(tool-bar-mode 0)
;; カーソル点滅しないように
(blink-cursor-mode 0)
;; 行数、列数を表示
(line-number-mode t)
(column-number-mode t)

;; メニューバーにファイルパスを表示する
(setq frame-title-format
      (format "%%f - Emacs@%s" (system-name)))

;; paren-mode 対応する括弧を強調して表示する
(setq show-paren-delay 0) ; 表示までの秒数。初期値は0.125
(show-paren-mode 1)
;; paren のスタイル：expression は括弧内も強調表示
(setq show-paren-style 'expression)
;; 行末の空白を強調表示
(setq-default show-trailing-whitespace t)
(set-face-background 'trailing-whitespace "#b14770")



;;; インデントの設定
(setq-default c-basic-offset 4     ;;基本インデント量4
              tab-width 4          ;;タブ幅4
              indent-tabs-mode nil)  ;;インデントをタブでするかスペースでするか

;; 何か
(c-set-offset 'case-label '+)

;; 現在行をハイライト
(defface hlline-face
'((((class color)
(background dark))
(:background "dark slate gray"))
(((class color)
(background light))
(:background "ForestGreen"))
(t
()))
"*Face used by hl-line.")
(setq hl-line-face 'hlline-face)
(global-hl-line-mode)

;; フォント設定
(set-face-attribute 'default nil
                    :family "Source_Code_Pro_Light"
                    :height 150)
;; 日本語フォントを ヒラギノ丸ゴ Pro に。
(if (eq window-system 'ns)
  (set-fontset-font
    nil 'japanese-jisx0208
    (font-spec :family "Hiragino Maru Gothic Pro")))

;; C-t でother-window、分割されてなかったら分割
(defun other-window-or-split () ; http://d.hatena.ne.jp/rubikitch/20100210/emacs
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window 1))
(define-key global-map (kbd "C-t") 'other-window-or-split)

;; uniquify 同一ファイル名のバッファ名をわかりやすく
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
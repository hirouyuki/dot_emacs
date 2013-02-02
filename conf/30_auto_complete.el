;; auto-complete
;; http://cx4a.org/software/auto-complete/
(when (require 'auto-complete-config nil t)
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/el-get/ac-dict")
  (define-key ac-complete-mode-map "\C-n" 'ac-next)
  (define-key ac-complete-mode-map "\C-p" 'ac-previous)
  (define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
  ;; 日本語入力中にonだとうざいので切る
  (defadvice ac-on-post-command
    (around check-whether-input-type-is-japanese activate)
    (or current-input-method ad-do-it))
  (ac-config-default)
  (setq ac-auto-start 1)
  (setq ac-dwim t)
  (setq ac-use-menu-map t) ;; C-n/C-pで候補選択可能
  (setq ac-auto-show-menu 0.1) ;; メニューを自動で表示
  (add-to-list 'ac-sources 'ac-source-yasnippet) ;; 常にYASnippetを補完候補に
  (setq ac-dictionary-directories "~/.emacs.d/el-get/auto-complete/ac-dict") ;; 辞書ファイルのディレクトリ
  (setq ac-comphist-file "~/.emacs.d/el-get/auto-complete/ac-comphist.dat") ;; 補完履歴のキャッシュ先
)

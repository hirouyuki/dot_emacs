;;helm settging
;(add-to-list 'load-path "~/.emacs.d/elpa/helm")
;(require 'helm-config)
;(require 'helm-descbinds)
(helm-mode 1)
(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "C-c y") 'helm-show-kill-ring)
(global-set-key (kbd "M-r") 'helm-resume)
(when (require 'helm-git nil t)
    (global-set-key (kbd "C-x C-g") 'helm-git-find-files)
    )
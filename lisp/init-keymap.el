


;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h C-f") 'counsel-describe-function)
(global-set-key (kbd "C-h C-v") 'counsel-describe-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

(global-set-key (kbd "C-h C-l") 'counsel-find-library)
(global-set-key (kbd "C-h C-i") 'counsel-info-lookup-symbol)


(global-set-key (kbd "<f8>") 'neotree-toggle)


;;(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
;;(global-set-key (kbd "C-c g") 'counsel-git)
;;(global-set-key (kbd "C-c j") 'counsel-git-grep)
;;(global-set-key (kbd "C-c k") 'counsel-ag)
;;(global-set-key (kbd "C-x l") 'counsel-locate)
;;(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
;;(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

;; 打开配置文件
(global-set-key (kbd "C-c <f1>") 'skyfire-open-init)
(global-set-key (kbd "C-c <f2>") 'skyfire-open-init-packages)
(global-set-key (kbd "C-c <f3>") 'skyfire-open-init-keymap)
(global-set-key (kbd "C-c <f4>") 'skyfire-open-init-ui)
(global-set-key (kbd "C-c <f5>") 'skyfire-open-init-better-defaults)
(global-set-key (kbd "C-c <f6>") 'skyfire-open-init-func)

(global-set-key (kbd "C-x C-r") 'recentf-open-files)

(global-set-key (kbd "C-S-\\") 'indent-region-or-buffer)

(global-set-key (kbd "C-S-a") 'mark-page)

(global-set-key (kbd "C-S-c") 'kill-ring-save)

(global-set-key (kbd "C-S-v") 'yank)

(global-set-key (kbd "C-S-x") 'kill-region)

(global-set-key (kbd "C-S-z") 'undo)

(global-set-key (kbd "C-S-o") 'counsel-find-file)

(global-set-key (kbd "C-S-p") 'neotree-dir)

(global-set-key (kbd "C-S-r") 'replace-string)

(global-set-key (kbd "M-S-r") 'replace-regexp)

(global-set-key (kbd "C-S-s") 'search)

(global-set-key (kbd "M-S-s") 'regexp-search)

(global-set-key (kbd "C-o") 'ace-window)

(provide 'init-keymap)

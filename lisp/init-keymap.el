


;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h C-f") 'counsel-describe-function)
(global-set-key (kbd "C-h C-v") 'counsel-describe-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

(global-set-key (kbd "C-h C-l") 'counsel-find-library)
(global-set-key (kbd "C-h C-i") 'counsel-info-lookup-symbol)

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


(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(provide 'init-keymap)

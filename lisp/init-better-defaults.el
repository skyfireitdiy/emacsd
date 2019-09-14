
;; 关闭警告声音
(setq ring-bell-function 'ignore)

;; 自动缩进？
(electric-indent-mode 1)
;; 关闭备份文件
(setq make-backup-files nil)
;; 输入的时候替换选中文字
(delete-selection-mode t)

;; 历史文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)

;; 自动加载配置
(global-auto-revert-mode t)


;; tab宽度
(setq-default tab-width 4)
(setq tab-width 4)


(provide 'init-better-defaults)

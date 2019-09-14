
(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-packages)
(require 'init-keymap)
;; 关闭警告声音
(setq ring-bell-function 'ignore)

;; 关闭工具栏
(tool-bar-mode -1)
;; 关闭滚动栏
(scroll-bar-mode -1)
;; 显示行号
(global-linum-mode 1)
;; 自动缩进？
(electric-indent-mode 1)
;; g关闭备份文件
(setq make-backup-files nil)
;; 输入的时候替换选中文字
(delete-selection-mode t)
;; 设置光标样式
(setq-default cursor-type 'bar)
;; 不显示欢迎页面
(setq inhibit-splash-screen t)

;; 历史文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)


;; 打开全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))
;; 高亮当前行
(global-hl-line-mode t)

;; tab宽度
(setq-default tab-width 4)
(setq tab-width 4)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

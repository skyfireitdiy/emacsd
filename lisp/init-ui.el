
;; 关闭工具栏
(tool-bar-mode -1)

;; 关闭滚动栏
(scroll-bar-mode -1)

;; 关闭菜单栏
(menu-bar-mode -1)

;; 显示行号
(global-linum-mode 1)

;; 设置光标样式
(setq-default cursor-type 'bar)
;; 不显示欢迎页面
(setq inhibit-splash-screen t)

;; 打开全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))
;; 高亮当前行
(global-hl-line-mode t)

(provide 'init-ui)

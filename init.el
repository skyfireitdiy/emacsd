;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comment.
;; (package-initialize)

(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)



(require 'cl)
(defvar skyfire/packages '(
			   exec-path-from-shell
			   company
			   auto-complete
			   company-dcd
			   d-mode
			   format-all
			   ) "Default pacakges")

(defun skyfire/packages-installed-p ()
  (loop for pkg in skyfire/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)
	))

(unless (skyfire/packages-installed-p)
  (message "%s" "安装 ...")
  (package-refresh-contents)
  (dolist (pkg skyfire/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; -----------------------------------包相关设置

;; 可执行文件路径
(exec-path-from-shell-initialize)

;; 自动完成
(ac-config-default)

;; Dlang
(require 'company-dcd)
(add-hook 'd-mode-hook 'company-dcd-mode)

;; 保存文件前格式化
(add-hook 'before-save-hook 'format-all-buffer)

;; --------------------------------------------






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
;; 打开配置文件快捷键
(defun open-my-el-init()
  (interactive)
  (find-file "~/.emacs.d/init.el")
  )
(global-set-key (kbd "<f2>") 'open-my-el-init)

;; 历史文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; 自动完成
(global-company-mode 1)
;; 打开全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))
;; 括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;; 高亮当前行
(global-hl-line-mode t)

;; tab宽度
(setq tab-width 4)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

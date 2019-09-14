
;; 增加清华大学源
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
						 ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))


(package-initialize)

(require 'cl)

;; 插件列表
(defvar skyfire/packages '(
						   exec-path-from-shell
						   auto-complete
						   company-dcd
						   d-mode
						   format-all
						   monokai-theme
						   hungry-delete
						   company-tabnine
						   counsel
						   swiper
						   smartparens
						   flycheck
						   popwin
						   ) "Default pacakges")

(setq package-selected-packages skyfire/packages)

;; 检测是否有未安装的插件
(defun skyfire/packages-installed-p ()
  (loop for pkg in skyfire/packages
		when (not (package-installed-p pkg)) do (return nil)
		finally (return t)
		))

;; 安装未安装的插件
(unless (skyfire/packages-installed-p)
  (message "%s" "安装 ...")
  (package-refresh-contents)
  (dolist (pkg skyfire/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; 机器学习自动完成
(require 'company-tabnine)
(setq company-idle-delay 0)
(setq company-show-numbers t)

;; 语法检查
(global-flycheck-mode)

;; 弹出窗
(require 'popwin)
(popwin-mode t)

;; -----------------------------------包相关设置

;; 可执行文件路径
(exec-path-from-shell-initialize)

;; Dlang
(require 'company-dcd)
(add-hook 'd-mode-hook 'company-dcd-mode)

;; 保存文件前格式化
(add-hook 'before-save-hook 'format-all-buffer)

;; 加载主题
(load-theme 'monokai t)

;; 优化删除
(require 'hungry-delete)
(global-hungry-delete-mode)

;; swiper 配置
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
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


;; 括号自动完成
(require 'smartparens-config)
(smartparens-global-mode t)

;; -------------------------------------------

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
(global-set-key (kbd "<f3>") 'open-my-el-init)

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
(setq-default tab-width 4)
(setq tab-width 4)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-auto-complete t)
 '(company-minimum-prefix-length 1)
 '(company-tabnine-insert-arguments nil)
 '(company-tabnine-wait 0.5)
 '(company-tooltip-idle-delay 0.0))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

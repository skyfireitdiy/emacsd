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
						   neotree
						   ace-window
						   sublimity
						   projectile
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



;; -----------------------------------包相关设置

;; 可执行文件路径
(exec-path-from-shell-initialize)

;; 自动完成
(global-company-mode 1)
(setq company-auto-complete nil)
(setq company-minimum-prefix-length 1)
(setq company-auto-complete-chars nil)
(setq company-tooltip-idle-delay 0.0)


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


;; 括号自动完成
(smartparens-global-mode t)

;; 机器学习自动完成
(require 'company-tabnine)
(setq company-idle-delay 0)
(setq company-show-numbers t)
(setq company-tabnine-insert-arguments nil)
(setq company-tabnine-wait 0.5)



;; 语法检查
(global-flycheck-mode)

;; 弹出窗
(require 'popwin)
(popwin-mode t)

;; 括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 侧边目录
(require 'neotree)


;; 迷你图
(require 'sublimity)
(require 'sublimity-scroll)
(require 'sublimity-map) ;; experimental
;;(require 'sublimity-attractive)
(sublimity-mode t)

;; 项目管理
(projectile-global-mode)
(setq projectile-enable-caching t)

(provide 'init-packages)

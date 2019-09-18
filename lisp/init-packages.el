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
						   indent-guide
						   graphviz-dot-mode
						   lua-mode
						   counsel-etags
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


;; Dlang
(when (package-installed-p 'company-dcd)
  (progn
    (require 'company-dcd)
    (add-hook 'd-mode-hook 'company-dcd-mode)
    )
  )
;; 保存文件前格式化
(when (package-installed-p 'format-all)
  (progn
    (add-hook 'before-save-hook 'format-all-buffer)
    )
  )
;; 加载主题
(when (package-installed-p 'monokai-theme)
  (progn
    (load-theme 'monokai t)
    )
  )

(package-installed-p 'swiper)

;; 优化删除
(when (package-installed-p 'hungry-delete)
  (progn
    (require 'hungry-delete)
    (global-hungry-delete-mode)
    )

  )

;; swiper 配置
(when (package-installed-p 'swiper)
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq enable-recursive-minibuffers t)
    )

  )

;; 括号自动完成
(when (package-installed-p 'smartparens)
  (progn
    (smartparens-global-mode t)
    )
  )


;; 自动完成
(global-company-mode 1)
(setq company-idle-delay 0)
(setq company-show-numbers t)
(setq company-auto-complete nil)
(setq company-minimum-prefix-length 1)
(setq company-auto-complete-chars nil)
(setq company-tooltip-idle-delay 0.0)

;; 机器学习自动完成
(when (package-installed-p 'company-tabnine)
  (progn
    (require 'company-tabnine)
    (setq company-tabnine-insert-arguments nil)
    (setq company-tabnine-wait 0.5)
    (add-to-list 'company-backends #'company-tabnine)
    )
  )

;; 语法检查
(when (package-installed-p 'flycheck)
  (progn
    (global-flycheck-mode)
    )
  )
;; 弹出窗

(when (package-installed-p 'popwin)
  (progn
    (require 'popwin)
    (popwin-mode t)
    )
  )


;; 侧边目录
(when (package-installed-p 'neotree)
  (progn
    (require 'neotree)
    )

  )


;; 迷你图
(when (package-installed-p 'sublimity)
  (progn
    (require 'sublimity)
    (require 'sublimity-scroll)
    (require 'sublimity-map) ;; experimental
    ;;(require 'sublimity-attractive)
    (sublimity-mode t)
    )

  )
;; 项目管理
(when (package-installed-p 'projectile)
  (progn
    (projectile-global-mode)
    (setq projectile-enable-caching t)
    )

  )
;; 缩进线
(when (package-installed-p 'indent-guide)
  (progn
    (indent-guide-global-mode)
    )

  )

(provide 'init-packages)

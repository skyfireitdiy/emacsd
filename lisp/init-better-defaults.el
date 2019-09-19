
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

;; 自动加载
(global-auto-revert-mode t)


;; tab宽度
(setq-default tab-width 4)
(setq tab-width 4)

;; 括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  "Highlight enclosing parens."
  (cond ((looking-at-p "\\s(")(funcall fn))
        (t (save-excursion (ignore-errors (backward-up-list))(funcall fn)))
        )
  )

(defun remove-dos-eol()
  "Replace DOS eolns CR LF with Unix eolns CR"
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t)(replace-match "")))

;; yes or no -> y or n
(fset 'yes-or-no-p 'y-or-n-p)

;; addrev-mode
(setq-default abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
                                            ("wmb", "Wang Maobin")
                                            ))
(setq hippie-expand-try-functions-list '(
                                         try-expand-debbrev
                                         try-expand-debbrev-all-buffers
                                         try-expand-debbrev-from-kill
                                         try-complete-file-name-partially
                                         try-complete-file-name
                                         try-expand-all-debbrevs
                                         try-expand-list
                                         try-expand-line
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol
                                         ))

(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

(put 'dired-find-alternate-file 'disabled nil)

(with-eval-after-load 'dired (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

(require 'dired-x)

(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)
(sp-local-pair 'lisp-interaction-mode "'" nil :actions nil)

(skyfire-setup-indent 4)

(provide 'init-better-defaults)

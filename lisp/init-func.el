
(defun skyfire-open-init() (interactive) (find-file "~/.emacs.d/init.el"))
(defun skyfire-open-init-keymap() (interactive) (find-file "~/.emacs.d/lisp/init-keymap.el"))
(defun skyfire-open-init-packages() (interactive) (find-file "~/.emacs.d/lisp/init-packages.el"))
(defun skyfire-open-init-ui()(interactive) (find-file "~/.emacs.d/lisp/init-ui.el"))
(defun skyfire-open-init-better-defaults()(interactive) (find-file "~/.emacs.d/lisp/init-better-defaults.el"))
(defun skyfire-open-init-func()(interactive) (find-file "~/.emacs.d/lisp/init-func.el"))



(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max))
  )

(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
		(progn
		  (indent-region (region-beginning) (region-end))
		  (message "缩进选中区域")
		  )
      (progn
		(indent-buffer)
		(message "缩进缓冲区")
		)
      )
    )

  )


(provide 'init-func)

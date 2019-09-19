
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


(defun skyfire-setup-indent (n)
  ;; java/c/c++
  (setq c-basic-offset n)
  ;; web development
  (setq coffee-tab-width n) ; coffeescript
  (setq javascript-indent-level n) ; javascript-mode
  (setq js-indent-level n) ; js-mode
  (setq js2-basic-offset n) ; js2-mode, in latest js2-mode, it's alias of js-indent-level
  (setq web-mode-markup-indent-offset n) ; web-mode, html tag in html file
  (setq web-mode-css-indent-offset n) ; web-mode, css in html file
  (setq web-mode-code-indent-offset n) ; web-mode, js code in html file
  (setq css-indent-offset n) ; css-mode
  (setq d-mode-indent-offset n)
  )



(provide 'init-func)

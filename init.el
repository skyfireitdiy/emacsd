
(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-packages)
(require 'init-keymap)
(require 'init-ui)
(require 'init-better-defaults)


(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

(load-file custom-file)

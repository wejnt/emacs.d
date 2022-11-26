(add-to-list 'load-path "~/.emacs.d/lisp/customize")

(require 'init-settings)

(use-package all-the-icons
  :load-path "~/.emacs.d/lisp/site/all-the-icons")

(use-package page-break-lines
  :load-path "~/.emacs.d/lisp/site/page-break-lines")

(defun setup-client ()
  (setq gnus-button-url 'browse-url-generic
          browse-url-generic-program browse-program
          browse-url-browser-function gnus-button-url)

  (when (display-graphic-p)
    (require 'init-theme)
    (set-frame-font "Monaco-14" t t)
    ;;设置窗口位置为屏库左上角(0,0)
    (set-frame-position (selected-frame) 170 0)
    ;;设置宽和高,我的十寸小本是110,33,大家可以调整这个参数来适应自己屏幕大小
    (set-frame-width (selected-frame) 165)
    (set-frame-height (selected-frame) 48)))

(setup-client)
(add-hook 'server-after-make-frame-hook 'setup-client)

(require 'init-dashboard)
(require 'init-window)

(require 'init-orgmode)
(require 'init-projectile)
(require 'init-lvy)
(require 'init-lsp)
(require 'init-treemacs)
(require 'init-git)
(require 'init-vterm)
(require 'init-proxy)

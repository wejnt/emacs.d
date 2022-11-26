;; 设置软件源,use-package配置
(setq packages "~/.emacs.d/packages.el")
;; 默认浏览器
(setq browse-program "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome")

;;指定自定义配置文件，防止自定义配置污染init.el，并加载该配置文件
(setq platform-file "~/.emacs.d/platform.el")
;;自定义配置目录
(setq load-customize-lisp "~/.emacs.d/lisp/load-customize.el")

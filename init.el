;;设置软件源,加载use-package
(setq packages "~/.emacs.d/packages.el")
(load packages)

;;指定自定义配置文件，防止自定义配置污染init.el，并加载该配置文件
(setq platform-file "~/.emacs.d/platform.el")
(unless
    (file-exists-p platform-file)
    (write-region "" nil platform-file))
(load platform-file)

(require 'ibuffer)
(global-set-key
    (kbd "C-x C-b") 'ibuffer)

;;系统共享剪切板
(setq x-select-enable-clipboard t)      ;共享剪贴板
(setq x-select-enable-primary t)        ;共享中键复制内容


(use-package exec-path-from-shell
  :if (memq window-system '(ns mac))
  :ensure t
  :config (exec-path-from-shell-initialize))

;;加载自定义配置目录
(setq load-customize-lisp "~/.emacs.d/lisp/load-customize.el")
(unless
    (file-exists-p load-customize-lisp)
    (write-region "add-to-list 'load-path \"~/.emacs.d/lisp/customize\"" nil load-customize-lisp))
(load load-customize-lisp)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(carog rust-fmt rustfmt rustic bind-key doom-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

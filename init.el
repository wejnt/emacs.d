(load packages)
(require 'ibuffer)
(global-set-key
    (kbd "C-x C-b") 'ibuffer)

;;系统共享剪切板
(setq x-select-enable-clipboard t)      ;共享剪贴板
(setq x-select-enable-primary t)        ;共享中键复制内容

;; 加载系统环境变量
(use-package exec-path-from-shell
  :if (memq window-system '(ns mac))
  :ensure t
  :config (exec-path-from-shell-initialize))

(unless
    (file-exists-p load-customize-lisp)
    (write-region "add-to-list 'load-path \"~/.emacs.d/lisp/customize\"" nil load-customize-lisp))
(load load-customize-lisp)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(doom-modeline super-save edwina carog rust-fmt rustfmt rustic bind-key doom-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)

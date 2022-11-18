;; 设置软件源
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
	("melpa" . "https://melpa.org/packages/")
    ("melpa stable" . "https://stable.melpa.org/packages/")))

;; ------ Emacs China 源 ------
;;(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
;;			 ("melpa" . "http://elpa.emacs-china.org/melpa/")))

;; ------ 腾讯源 ------
;;(setq package-archives '(("gnu"   . "http://mirrors.cloud.tencent.com/elpa/gnu/")
;;                         ("melpa" . "http://mirrors.cloud.tencent.com/elpa/melpa/")))

;; ------ 清华源 ------
;;(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;;                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))


;; use-package 安装
;; This is only needed once, near the top of the file
(eval-when-compile
    ;; Following line is not needed if use-package.el is in ~/.emacs.d
    (add-to-list 'load-path "~/.emacs.d/lisp/site/use-package")
    (require 'use-package))
(setq use-package-always-ensure t)

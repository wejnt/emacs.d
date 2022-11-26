;;(setq package-enable-at-startup nil)
(setq frame-inhibit-implied-resize t)

(tool-bar-mode -1)                      ;关闭工具栏
(scroll-bar-mode 0)                     ;关闭滚动条
(blink-cursor-mode 0)                   ;关闭光标闪烁

;; 加载配置变量
(load "~/.emacs.d/variae-defin.el")

;; 如果文件不存在，则创建一个空文件
(unless
    (file-exists-p platform-file)
    (write-region "" nil platform-file))
(load platform-file)



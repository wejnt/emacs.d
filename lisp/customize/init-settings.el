(setq make-backup-files nil)
(setq backup-inhibited t)               ;不产生备份
(setq auto-save-list-file-prefix nil)
(setq auto-save-default nil)            ;不生成 #fname# 格式的临时文件

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
;; 将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

;; 关闭默认的哔哔提示音
(setq ring-bell-function 'ignore)
(electric-pair-mode t)
;; 编码设置
(set-language-environment "utf-8")
(set-buffer-file-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-clipboard-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(prefer-coding-system 'utf-8)
(setq-default pathname-coding-system 'utf-8)
(setq
  default-process-coding-system '(utf-8 . utf-8)
  locale-coding-system 'utf-8
  file-name-coding-system 'utf-8
  default-buffer-file-coding-system 'utf-8
  slime-net-coding-system 'utf-8-unix)
(setenv "LC_CTYPE" "UTF-8")
(setenv "LC_ALL" "en_US.UTF-8")
(setenv "LANG" "en_US.UTF-8")

;; 基本设置
(setq-default
 indicate-buffer-boundaries 'left              ;; 在窗口边缘上显示一个小箭头指示当前 buffer 的边界
 delete-by-moving-to-trash t                      ;; 删除文件移动到垃圾箱
 window-combination-resize t                      ;; 新窗口平均其他左右窗口
 kill-whole-line t)  ;; C-k时,同时删除该行

(setq scroll-conservatively 101)        ;光标移出时平滑滚动而不是重定位到中央
(setq mouse-wheel-scroll-amount '(1))   ;用鼠标滚动时一次只滚动一行
(setq browse-url-generic-program (executable-find "google-chrome"))
(setq browse-url-browser-function 'browse-url-generic)
(setq default-major-mode 'text-mode)    ;将缺省模式设置为text模式
(setq visible-bell nil)                 ;关闭错误操作时的窗口闪动警告
(setq make-pointer-invisible t)         ;输入时隐藏鼠标指针
(setq auto-image-file-mode t)           ;让emacs可以直接打开和显示图片
(setq vc-handled-backends '(Git SVN))   ;打开版本控制
(fset 'yes-or-no-p 'y-or-n-p)           ;用 y/n 替代 yes/no
(global-visual-line-mode 0)

;; 设置4个空格缩进
(setq-default indent-tabs-mode nil)
(setq tab-width 4) ; or any other preferred value

;; 时间显示设置
(display-time-mode 1)   ;; 启用时间显示设置,在minibuffer上面的那个杠上
(setq display-time-24hr-format t   ;; 时间使用24小时制
      display-time-day-and-date t   ;; 时间显示包括日期和具体时间
      display-time-use-mail-icon t   ;; 时间栏旁边启用邮件设置
      display-time-interval 10   ;; 时间的变化频率
      display-time-format "%A %H:%M")   ;; 显示时间的格式

(setq initial-scratch-message "")               ;将 scratch 中的内容置空
(setq inhibit-startup-message t)                ;关闭启动画面
(setq frame-title-format "[%b]")                ;显示buffer的名字
(setq user-full-name "zhou")                  ;用户名
(setq user-mail-address "zhwt1999@outlook.com") ;用户邮箱

(setq whitespace-style '(face tabs trailing tab-mark)) ;高亮制表符、结尾冗余空格
(setq whitespace-display-mappings
      '((space-mark 32 [32] [183] [46])
        (space-mark 160 [164] [95])
        (space-mark 2208 [2212] [95])
        (space-mark 2336 [2340] [95])
        (space-mark 3616 [3620] [95])
        (space-mark 3872 [3876] [95])
        (newline-mark 10 [182 10] [36 10])
        (tab-mark 9 [187 9] [92 9])))
(global-whitespace-mode t)

(use-package hungry-delete
  :config
  (setq hungry-delete-join-reluctantly t)
  (global-hungry-delete-mode))

(provide 'init-settings)

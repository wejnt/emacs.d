(use-package vterm
  :load-path "~/.emacs.d/lisp/site/emacs-libvterm"
  ;; https://github.com/akermu/emacs-libvterm
  ;; 请务必参照项目 README 作配置，以下不是我的完整配置。
  ;; 比如，如果你要和 shell 双向互动（对，它可以双向互动），
  ;; 那么 shell 需要做一点配置以解析 vterm 传递过来的信号
  :config
  (setq vterm-kill-buffer-on-exit t)) ;; shell 退出时 kill 掉这个 buffer
;; 使用 M-x vterm 新建一个 terminal
;; 在 terminal 中使用 C-c C-t 进入「选择」模式（类似 Tmux 里的 C-b [ ）

(provide 'init-vterm)

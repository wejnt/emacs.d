;;; init-projectile.el --- 项目管理插件

;; config

(use-package projectile
  :load-path "~/.emacs.d/lisp/site/projectile"
  :config
  (projectile-mode +1)
  ;; Recommended keymap prefix on macOS
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)

  (setq projectile-completion-system 'ivy))
(provide 'init-projectile)

;;; init-projectile.el ends here

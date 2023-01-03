;;; init-projectile.el --- 项目管理插件

(use-package projectile
  :load-path "~/.emacs.d/lisp/site/projectile"
  :bind ("s-p" . projectile-command-map)
  :custom (projectile-project-search-path '("~/Code"))
  :config
  (setq projectile-completion-system 'ivy
        projectile-project-root-functions '(projectile-root-local
                                            projectile-root-bottom-up)))

(provide 'init-projectile)

;; =========== Config Dashboard ======================
(use-package dashboard
  :load-path "~/.emacs.d/lisp/site/emacs-dashboard"
  :init
  (progn
    (setq dashboard-items '((recents  . 20)
                            (projects . 3)
                            (bookmarks . 5)
                            (agenda . 6)))
    (setq dashboard-set-file-icons t)
    (setq dashboard-set-navigator t)
    (setq dashboard-banner-logo-title "Welcome to Emacs Dashboard")
    (setq dashboard-startup-banner 'logo)
    (setq initial-buffer-choice (lambda ()
                                  (get-buffer-create "*dashboard*")
                                  (dashboard-refresh-buffer))))
  :config (dashboard-setup-startup-hook))

(provide 'init-dashboard)
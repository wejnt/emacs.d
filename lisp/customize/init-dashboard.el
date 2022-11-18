(use-package page-break-lines
  :load-path "~/.emacs.d/lisp/site/page-break-lines"
  :ensure t)

(use-package all-the-icons
  :load-path "~/.emacs.d/lisp/site/all-the-icons"
  :ensure t)

(use-package dashboard
  :load-path "~/.emacs.d/lisp/site/emacs-dashboard"
  :ensure t
  :config (dashboard-setup-startup-hook))

(setq dashboard-items '((recents  . 6)
                        (bookmarks . 5)
                        (projects . 5)
                        (agenda . 5)
                        (registers . 5)))

(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)

(dashboard-modify-heading-icons '((recents . "file-text")
                                  (bookmarks . "book")))

(setq dashboard-set-navigator t)

(setq dashboard-set-footer nil)

(add-to-list 'dashboard-items '(agenda) t)
(setq dashboard-week-agenda t)

(provide 'init-dashboard)

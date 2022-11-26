;; =========== Config Dashboard ======================
(use-package dashboard
  :load-path "~/.emacs.d/lisp/site/emacs-dashboard"
  :init
  (progn
    (setq dashboard-items '((recents  . 12)
                            (projects . 3)
                            (bookmarks . 5)
                            (agenda . 6)))
    (setq dashboard-set-file-icons t)
    (setq dashboard-center-content t)
    (setq dashboard-set-footer nil)
    (setq dashboard-banner-logo-title "Welcome to Emacs Dashboard")
    (setq dashboard-startup-banner 'logo)
    (setq dashboard-set-navigator t)
    ;; Format: "(icon title help action face prefix suffix)"
    (setq dashboard-navigator-buttons
          `(
            (
             (,(all-the-icons-faicon "gitlab" :height 1.0 :v-adjust 0.0)
              "Github" "Browse Github"
              (lambda (&rest _) (browse-url "https://github.com/wejnt/")) nil nil nil)
             )))
    ;(setq dashboard-set-init-info t)
    (setq initial-buffer-choice
          (lambda ()
            (get-buffer-create "*dashboard*")
            (dashboard-refresh-buffer)))
    )
  :config (dashboard-setup-startup-hook))

(provide 'init-dashboard)

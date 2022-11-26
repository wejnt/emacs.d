
;; 主题 zenburn,doom-themes,solarized-theme
(use-package doom-themes
  :ensure t
  :init
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)
  (load-theme 'doom-one t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-one") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

(use-package doom-modeline
  :init
  (doom-modeline-mode 1)
  (setq doom-modeline-support-imenu t)
  (setq doom-modeline-height 0.8)
  (setq doom-modeline-bar-width 4)
  (setq doom-modeline-icon t)
  (setq doom-modeline-lsp t))

(provide 'init-theme)

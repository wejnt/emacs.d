;; 主题 zenburn,doom-themes,solarized-theme
(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)
  (load-theme 'doom-nord t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; or for treemacs users
;;   (setq doom-themes-treemacs-theme "doom-xcode") ; use "doom-colors" for less minimal icon theme
;;   (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

(provide 'theme)

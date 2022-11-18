(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode))
(setq doom-modeline-support-imenu t)
(setq doom-modeline-height 1)
(setq doom-modeline-bar-width 4)
(setq doom-modeline-icon t)
(setq doom-modeline-lsp t)

(provide 'init-modeline)

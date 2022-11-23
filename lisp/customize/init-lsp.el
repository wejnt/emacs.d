(use-package which-key
  :config (which-key-mode))

(use-package lsp-mode
  :bind (:map lsp-mode-map
              ("C-c d" . lsp-describe-thing-at-point)
              ("C-c a" . lsp-execute-code-action))
  :bind-keymap ("C-c l" . lsp-command-map)
  :hook ((rust-mode . lsp)
         (rust-mode-hook . lsp)
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

(use-package lsp-ui
  :after (lsp-mode)
  :commands lsp-ui-mode
  :custom
  (lsp-ui-peek-always-show t)
  (lsp-ui-sideline-show-hover t)
  (lsp-ui-doc-enable nil))

(use-package lsp-treemacs
  :after (lsp-mode)
  :commands lsp-treemacs-errors-list)

(use-package company
  :hook ((emacs-lsp-mode . (lambda ()
                             (setq-local company-backends '(company-elisp))))
         (emacs-lsp-mode . company-mode)
         (toml-mode-hook . company-mode))
  :config
  (company-keymap--unbind-quick-access company-active-map)
  (company-tng-configure-default)
  (global-company-mode t)
  (setq company-idle-delay 0.1
        company-minimum-prefix-length 1))

(use-package flycheck)

(use-package yasnippet
  :load-path "~/.emacs.d/lisp/site/yasnippet"
  :config
  (yas-global-mode 1))

(use-package rust-mode
  :bind (:map rust-mode-map
              ("<f6>" . rust-run)
              ("C-c C-l" . #'rust-format-buffer)))

(use-package cargo
  :after (rust-mode)
  :hook
  (rust-mode . cargo-minor-mode))

(use-package flycheck-rust
  :after (:all rust flycheck)
  :hook
  (rust-mode-hook . flycheck-rust-setup))

(use-package toml-mode)

(provide 'init-lsp)

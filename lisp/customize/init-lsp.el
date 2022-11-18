(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package lsp-mode
  :ensure t
  :bind (:map lsp-mode-map
              ("C-c d" . lsp-describe-thing-at-point)
              ("C-c a" . lsp-execute-code-action))
  :bind-keymap ("C-c l" . lsp-command-map)
  :config
  (lsp-enable-which-key-integration ))

(use-package company
  :ensure t
  :hook ((emacs-lsp-mode . (lambda ()
                             (setq-local company-backends '(company-elisp))))
         (emacs-lsp-mode . company-mode))
  :config
  (company-keymap--unbind-quick-access company-active-map)
  (company-tng-configure-default)
  (setq company-idle-delay 0.1
        company-minimum-prefix-length 1))

(use-package flycheck
  :ensure t)

(use-package rustic
  :ensure t
  :bind (("<f6>" . rustic-format-buffer))
  :config
  (require 'lsp-rust)
  (setq lsp-rust-analyzer-completion-add-call-parenthesis nil))

(provide 'init-lsp)

(use-package rust-mode
  :load-path "~/.emacs.d/lisp/site/rust-mode")

(use-package rustic
  :load-path "~/.emacs.d/lisp/site/rustic")
(use-package rust-playground)

(defun rustic-mode-auto-save-hook ()
  "Enable auto-saving in rustic-mode buffers."
  (when buffer-file-name
    (setq-local compilation-ask-about-save nil)))

(add-hook 'rustic-mode-hook 'rustic-mode-auto-save-hook)

(provide 'init-rust)

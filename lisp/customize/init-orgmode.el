;;; org-mode.el ---
(use-package org
  :load-path "~/.emacs.d/lisp/site/org-mode/lisp"
  :config
  ;; org agenda
  ;; C-c C-s schedule
  ;; C-c C-d deadline
  (global-set-key (kbd "C-c o a") 'org-agenda)
  (setq org-agenda-files '("~/org/gtd.org"))
  (setq org-agenda-span 'day))
(provide 'init-orgmode)


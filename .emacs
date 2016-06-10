;; Line numbers
(global-linum-mode t)

;; Disable welcome screen
(setq inhibit-startup-message t)

;; Org mode languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t) (sh . t) (C . t))
)

(setq org-confirm-babel-evaluate nil)

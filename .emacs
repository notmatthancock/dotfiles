;; Line and column numbers
(global-linum-mode t)
(setq column-number-mode t)

;; Disable welcome screen
(setq inhibit-startup-message t)

;; Org mode languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t) (sh . t) (C . t))
)

;; Remove confirm message for org mode code block evaluation.
(setq org-confirm-babel-evaluate nil)


;; Mark column 80.
(add-to-list 'load-path "~/.emacs.d/fill-column-indicator/")
(require 'fill-column-indicator)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)
(setq fci-rule-column 80)

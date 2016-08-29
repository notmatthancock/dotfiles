;; Line and column numbers
(global-linum-mode t)
(setq column-number-mode t)

;; Disable welcome screen
(setq inhibit-startup-message t)

;; Spaces, not tabs.
(setq-default indent-tabs-mode nil)

;; Show matching parens.
(show-paren-mode 1)

;; Change backup file dir.
(setq backup-directory-alist `(("." . "~/.emacs.backup")))
(setq backup-by-copying t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; Org mode languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t) (sh . t) (C . t) (fortran . t))
)

;; Remove confirm message for org mode code block evaluation.
(setq org-confirm-babel-evaluate nil)

;; Evil mode.
(require 'evil)
(evil-mode 1)
;; Evil tabs.
(global-evil-tabs-mode t)

(require 'ox-beamer)
(require 'ox-reveal)
(setq org-reveal-root "file:///home/matt/local/code/scratch/reveal.js")

;; Column indicator at at the 80 mark.
(require 'fill-column-indicator)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)
(setq fci-rule-column 80)

;; Elpy for python completion, etc.
(require 'elpy)
(elpy-enable)
(elpy-use-ipython)

;; M-x run-python for ipython interpreter.
(when (executable-find "ipython")
 (setq python-shell-interpreter "ipython"))



;; Theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (tsdh-light)))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 128 :width normal)))))



;; (defun org-html-template-around (org-fun &rest args)
;;   (let ((content (car args))
;;           (info (cadr args)))
;;       (apply org-fun (list (concat "<div id=\"wrapper-div\">"
;;                                    content
;;                                                                 "</div>")
;;                                info))))
;; (advice-add 'org-html-template :around #'org-html-template-around)

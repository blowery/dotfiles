(add-to-list 'load-path "~/.emacs.d/site-lisp")
(add-to-list 'load-path "~/.emacs.d/site-lisp/color-theme")

(autoload 'js2-mode "js2" nil t)

(setq-default ispell-program-name "aspell")
(setq read-file-name-completion-ignore-case t)

(require 'color-theme)
(color-theme-initialize)
(color-theme-clarity)

;; not supported on emacs.app? (setq mac-command-modifier 'meta)
;; not supported on emacs.app? (setq x-select-enable-clipboard t)

;; go right to an empty buffer
(setq inhibit-startup-message t)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.pac$" . js2-mode))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default c-basic-offset 2)

;; wrap long lines in horizontally split buffers
(setq truncate-partial-width-windows nil)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(auto-save-interval 0)
 '(auto-save-timeout 0)
 '(backup-by-copying t)
 '(backup-directory-alist (quote (("." . "~/.emacs.d/backups"))))
 '(compilation-error-regexp-alist (quote (absoft ada aix ant maven bash borland caml comma edg-1 edg-2 epc ftnchek iar ibm irix java jikes-file jikes-line gnu gcc-include lcc makepp mips-1 mips-2 msft oracle perl rxp sparc-pascal-file sparc-pascal-line sparc-pascal-example sun sun-ada 4bsd gcov-file gcov-header gcov-nomark gcov-called-line gcov-never-called)))
 '(js2-highlight-level 3)
 '(make-backup-files nil)
 '(mouse-wheel-mode t)
 '(paren-match-face (quote paren-face-match))
 '(paren-sexp-mode (quote mismatchev))
 '(show-paren-mode t)
 '(transient-mark-mode t)
 '(vc-make-backup-files nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "Spring" :foreground "black"))))
 '(js2-error-face ((((class color) (background dark)) (:foreground "yellow" :inverse-video t))))
 '(js2-keyword-face ((t (:foreground "SlateBlue" :weight bold))))
 '(paren-face-match ((((class color)) (:foreground "gold")))))

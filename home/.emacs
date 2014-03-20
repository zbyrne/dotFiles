;; fg/bg colours
(set-foreground-color "grey")
(set-background-color "black")

;; set font
(set-default-font "Inconsolata 8")

;; no scroll bars
(scroll-bar-mode -1)

;; no tool bar
(tool-bar-mode -1)

;; no fringe
(set-fringe-mode 0)

;; Show line-number in the mode line
(line-number-mode 1)

;; Show column-number in the mode line
(column-number-mode 1)

;; enable mouse wheel
(mouse-wheel-mode 1)

;; Smooth scrolling
(setq scroll-step 1)

;; make the mouse work in terminals
(xterm-mouse-mode 1)

;; mark trailing whitespace
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)

;; I hate tabs
(setq-default indent-tabs-mode nil)

;; gnu c style sux!
(setq c-default-style "stroustrup"
      c-basic-offset 4)

;; cscope for nsfw repo
(require 'xcscope)

(set-variable 'cscope-do-not-update-database 't)
(set-variable 'cscope-allow-arrow-overlays nil)
;; cscope doesn't like terminal mode
(define-key cscope-list-entry-keymap (kbd "RET") 'cscope-select-entry-other-window)
(defadvice cscope:hook (after adjust-keybindings)
  (local-set-key "\M-." 'cscope-find-global-definition)
  (local-set-key "\M-," 'cscope-pop-mark))
(ad-activate 'cscope:hook)

;; cscope sets itself up for c and c++, but we have pycscope as well
(add-hook 'python-mode-hook (function cscope:hook))

;; don't split window vertically unless I tell you to
'(split-height-threshold nil)
'(split-width-threshold 200)

;; save tilde backup files where I tell you
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq backup-by-copying t)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(font-lock-builtin-face ((((class color) (min-colors 88) (background dark)) (:foreground "#5555ff"))))
 '(font-lock-comment-face ((((class color) (min-colors 88) (background dark)) (:foreground "red"))))
 '(font-lock-constant-face ((((class color) (min-colors 88) (background dark)) (:foreground "purple"))))
 '(font-lock-string-face ((t (:foreground "#00a000"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 88) (background dark)) (:foreground "orange")))))

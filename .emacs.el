;; load-path
(setq load-path (cons (expand-file-name "~/.emacs.d/vhdl-mode") load-path))
(setq custom-theme-directory "~/.emacs.d/themes/")

;; 日本語設定
(set-locale-environment nil)
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)

;; Startup-message
(setq inhibit-startup-message t)

;; Backup-files
(setq make-backup-files nil)
(setq delete-auto-save-files t)

;; scroll
(setq scroll-conservatively 1)

;; vhdl-mode
(setq auto-mode-alist (cons '("\\.vhd?\\'" . vhdl-mode) auto-mode-alist))

;; cursor
(column-number-mode 1)
(line-number-mode 1)
(column-number-mode t)
(show-paren-mode 1)
(setq show-paren-style 'mixed)
;;(set-face-background 'show-paren-match-face "grey")
;;(set-face-foreground 'show-paren-match-face "black")
(global-hl-line-mode t)
(global-linum-mode t)
(setq linum-format "|%4d| ")

;; modeline
(defvar my-lines-page-mode t)
(defvar my-mode-line-format)

(when my-lines-page-mode
  (setq my-mode-line-format "%4d")
  (if size-indication-mode
      (setq my-mode-line-format (concat my-mode-line-format " of %%I")))
  (cond ((and (eq line-number-mode t) (eq column-number-mode t))
         (setq my-mode-line-format (concat my-mode-line-format " (%%l,%%c)")))
        ((eq line-number-mode t)
         (setq my-mode-line-format (concat my-mode-line-format " L%%l")))
        ((eq column-number-mode t)
         (setq my-mode-line-format (concat my-mode-line-format " C%%c"))))

  (setq mode-line-position
        '(:eval (format my-mode-line-format (count-lines (point-max) (point-min))))))

;; (yes/no) -> (y/n)
(fset 'yes-or-no-p 'y-or-n-p)

;; tab->space
(setq-default tab-width 4 indent-tabs-mode nil)

;; menubar and toolbar
(menu-bar-mode -1)

;; color-theme
(load-theme 'pekaso t)

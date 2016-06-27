;; load-path
(setq load-path (cons (expand-file-name "~/.emacs.d/vhdl-mode") load-path))

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
(set-face-background 'show-paren-match-face "grey")
(set-face-foreground 'show-paren-match-face "black")
(global-hl-line-mode t)
(global-linum-mode t)
(setq linum-format "%04d||")
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-function-name-face ((t (:foreground "brightblue"))))
 '(hl-line ((t (:background "color-236")))))

;; (yes/no) -> (y/n)
(fset 'yes-or-no-p 'y-or-n-p)

;; tab->space
(setq-default tab-width 4 indent-tabs-mode nil)

;; menubar and toolbar
(menu-bar-mode -1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (wheatgrass))))



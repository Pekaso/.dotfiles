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

;; cursor
(column-number-mode 1)
(line-number-mode 1)
(column-number-mode t)
(show-paren-mode 1)
(global-hl-line-mode t)
(custom-set-faces
 '(hl-line ((t (:background "color-236"))))
 )


;; tab->space
(setq-default tab-width 4 indent-tabs-mode nil)

;; menubar and toolbar
(menu-bar-mode -1)


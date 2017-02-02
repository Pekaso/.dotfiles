;; load-path

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(setq load-path (cons (expand-file-name "~/.emacs.d/vhdl-mode") load-path))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/site-lisp/yasnippet"))
(add-to-list 'custom-theme-load-path "~/.dotfiles/themes/")
;(add-to-list 'load-path "~/.emacs.d/themes/")
;(setq custom-theme-directory "~/.emacs.d/themes/")

;; Auto Complete
(require 'auto-complete-config)
(set-default 'ac-sources
  '(ac-source-yasnippet))
(global-auto-complete-mode 1)
(setq ac-use-menu-map t)
(ac-config-default)
(add-to-list 'ac-modes 'text-mode)         ;; text-modeでも自動的に有効にする
(add-to-list 'ac-modes 'fundamental-mode)  ;; fundamental-mode
(add-to-list 'ac-modes 'org-mode)
(add-to-list 'ac-modes 'latex-mode)
(ac-set-trigger-key "TAB")
(setq ac-use-menu-map t)       ;; 補完メニュー表示時にC-n/C-pで補完候補選択
(setq ac-use-fuzzy t)          ;; 曖昧マッチ
(global-auto-complete-mode 1)
(setq ac-use-menu-map t)

;;ysnippets
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/mysnippets"
        "~/.emacs.d/yasnippet-snippets"
        ))

;; 既存スニペットを挿入する
(define-key yas-minor-mode-map (kbd "C-x i i") 'yas-insert-snippet)
;; 新規スニペットを作成するバッファを用意する
(define-key yas-minor-mode-map (kbd "C-x i n") 'yas-new-snippet)
;; 既存スニペットを閲覧・編集する
(define-key yas-minor-mode-map (kbd "C-x i v") 'yas-visit-snippet-file)
 
(yas-global-mode 1)

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
(defface hlline-face
  '((((class color)
      (background dark))
     (:background "dark slate gray"))
    (((class color)
      (background light))
     (:background "OliveDrab1"))
    (t
     ()))
  "*Face used by hl-line.")
;; (setq hl-line-face 'hlline-face)
(setq hl-line-face 'underline) ; 下線
(global-hl-line-mode t)
(setq linum-delay t)
(defadvice linum-schedule (around my-linum-schedule () activate)
  (run-with-idle-timer 0.2 nil #'linum-update-current))
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
;(load "molokai-theme.el")
(load-theme 'molokai t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (auto-complete)))
 '(safe-local-variable-values (quote ((TeX-master . t)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

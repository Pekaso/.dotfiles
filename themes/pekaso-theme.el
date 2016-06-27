(deftheme pekaso
  "Pekaso original color theme")

(custom-theme-set-faces
 'pekaso
 ;; 背景・文字・カーソル
 '(cursor ((t (:foreground "#801815"))))
 '(default ((t (:background "#101010" :foreground "#F8F8F2"))))

 ;; 選択範囲
 '(region ((t (:background "#D46D6A"))))

 ;; モードライン
 '(mode-line ((t (:foreground "#FFFFFF" :background "#003133"
                              :box (:line-width 1 :color "#000000" :style released-button)))))
 '(mode-line-buffer-id ((t (:foreground nil :background nil))))
 '(mode-line-inactive ((t (:foreground "#BCBCBC" :background "#333333"
                                       :box (:line-width 1 :color "#333333")))))

 ;; ハイライト
 '(highlight ((t (:foreground "#000000" :background "#67989A"))))
 '(hl-line ((t (:background "#234667"))))

 ;; 関数名
 '(font-lock-function-name-face ((t (:foreground "#FFFFFF"))))

 ;; 変数名・変数の内容
 '(font-lock-variable-name-face ((t (:foreground "#FFFFFF"))))
 '(font-lock-string-face ((t (:foreground "#86C98A"))))

 ;; 特定キーワード
 '(font-lock-keyword-face ((t (:foreground "#F92672"))))

 ;; Boolean
 '(font-lock-constant-face((t (:foreground "#AE81BC"))))

 ;; 括弧
 '(show-paren-match-face ((t (:foreground "#1B1D1E" :background "#FD971F"))))
 '(paren-face ((t (:foreground "#A6E22A" :background nil))))

 ;; コメント
 '(font-lock-comment-face ((t (:foreground "#AA3C39"))))

 ;; CSS
 '(css-selector ((t (:foreground "#66D9EF"))))
 '(css-property ((t (:foreground "#FD971F"))))

 ;; dired
 '(dired-directory ((t (:foreground "#A6E22A"))))
 '(dired-symlink ((t (:foreground "#66D9EF"))))

 ;; MMM-mode
 '(mmm-default-submode-face ((t (:foreground nil :background "#000000")))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'pekaso)

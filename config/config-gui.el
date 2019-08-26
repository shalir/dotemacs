;; (use-package jazz-theme
;;   :ensure t
;;   :init
;;   (load-theme 'jazz t))

(load-theme 'adwaita)

(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(use-package simple
  :config
  (menu-bar-mode -1)
  (line-number-mode -1)
  (show-paren-mode 1)
  (auto-save-mode nil)
  (blink-cursor-mode 1)
  (delete-selection-mode t)
  (global-visual-line-mode t)
  (progn
	(setq auto-save-default nil)
	(setq make-backup-files nil)
	(setq create-lockfiles nil)
	(setq debug-on-error nil)))

(setq-default tab-width 4)

(setq x-select-enable-clipboard t
      x-select-enable-primary t
      save-interprogram-paste-before-kill t
      apropos-do-all t
      mouse-yank-at-point t)

(set-frame-font "Monaco:pixelsize=12")
(dolist (charset '(han kana symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "Hiragino Sans GB" :size 14.4)))

(provide 'config-gui)
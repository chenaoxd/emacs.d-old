(add-to-list 'load-path "~/.emacs.d/plugins")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-safe-themes (quote ("9fd20670758db15cc4d0b4442a74543888d2e445646b25f2755c65dcd6f1504b" default)))
 '(markdown-command "/usr/local/bin/markdown")
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(load-library "~/.emacs.d/themes/molokai-theme.el")
(setq molokai-theme-kit t)
(global-linum-mode t)

;; default directory
(setq command-line-default-directory "~/")

;; auto-complete
(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete-1.3.1")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete-1.3.1/dict")
(ac-config-default)

;; set tab default space
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(global-set-key "\C-m" 'newline-and-indent)
(global-set-key (kbd "C-<return>") 'newline)

;; mac key bind
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)
(global-set-key "\C-z" 'undo)

;; js2 mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; less mode
(require 'less-css-mode)

;; markdown mode
(autoload 'markdown-mode "markdown-mode.el"
    "Major mode for editing Markdown files" t)
(setq auto-mode-alist
    (cons '("\\.markdown" . markdown-mode) auto-mode-alist))

;; tramp mode
(require 'tramp)
(setq tramp-default-method "ssh")

;; coding-system-type
(set-face-attribute
  'default nil :font "Monaco-14") ;设置默认字体
(set-fontset-font
    (frame-parameter nil 'font)
    'han
    (font-spec :family "STHeiti" :size 14)) ;设置汉字字体

(prefer-coding-system 'gb18030)
(prefer-coding-system 'utf-8)

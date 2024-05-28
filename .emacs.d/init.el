(setq inhibit-splash-screen t)
(setq visible-bell t)
(setq backup-inhibited t)
(setq auto-save-default nil)
(setq display-line-numbers-type 'relative)
(setq display-time-format "%H:%M")
(set-frame-parameter nil 'internal-border-width 10)
(set-fringe-mode '(0 . 0))
(set-face-attribute 'default nil :font "monospace" :height 108)
(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)

(add-to-list 'default-frame-alist '(foreground-color . "#cecece"))
(add-to-list 'default-frame-alist '(background-color . "#2d2d2d"))
(use-package hl-line
  :custom-face
  (hl-line ((t (:background "#222222")))))
(set-face-attribute 'mode-line nil
                    :background "#a6db21"
                    :foreground "#1a1a1a"
		    :box '(:line-width 2 :color "#a6db21")
		    :overline nil
                    :underline nil)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(global-display-line-numbers-mode 1)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(display-time-mode 1)
(global-hl-line-mode 1)

(setq package-archive '(("melpa" . "https://melpa.org/packages/")
			("melpa-stable" . "https://stable.melpa.org/packages/")
			("elpa" . "https://elpa.gnu.org/packages/")))
 
(package-initialize)
(unless package-archive-contents
 (package-refresh-contents))
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

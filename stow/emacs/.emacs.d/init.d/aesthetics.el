(load "helpers")

;; window geometry
(add-to-list 'default-frame-alist '(width  . 120))
(add-to-list 'default-frame-alist '(height .  40))

;; no menu bar in terminal
(unless (display-graphic-p) (menu-bar-mode -1))
;; no scroll bar
(toggle-scroll-bar -1)
;; no tool bar
(tool-bar-mode -1) 

;; absolute / relative line numbering
(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

;; syntax higlighting
(mapc 'straight-use-package '(highlight-defined
                              highlight-numbers
                              highlight-quoted
                              rainbow-delimiters))

(add-hooks 'emacs-lisp-mode-hook '(highlight-defined-mode
                                   highlight-quoted-mode))

(add-hooks 'prog-mode-hook '(rainbow-delimiters-mode
                             highlight-numbers-mode))

;; color themes
(mapc 'straight-use-package '(kaolin-themes
                              majapahit-theme
                              seoul256-theme))

(load-theme 'kaolin-light t)
(unless (display-graphic-p) (load-theme 'seoul256 t))

;; font setup
(when (member "LigaIosevka Nerd Font Mono" (font-family-list))
  (set-frame-font "LigaIosevka Nerd Font Mono-18" t t))

;; modeline
(straight-use-package 'doom-modeline)
(doom-modeline-mode 1)
(column-number-mode)

;; audio -> visual
(setq visible-bell 1)
;; match parentheses
(show-paren-mode 1)

;; tabs -> spaces
(setq-default indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)
(setq c-basic-indent 2)
(setq tab-width 2)


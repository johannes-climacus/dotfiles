(straight-use-package 'evil)
(straight-use-package 'evil-leader)
(require 'evil)
(require 'evil-leader)
(global-evil-leader-mode)
(evil-mode 1)


(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "b" 'switch-to-buffer
  "d" 'kill-buffer
  "e" 'find-file
  "n" 'xah-next-user-buffer)

(evil-leader/set-key-for-mode 'fsharp-mode
  "r" 'fsharp-load-buffer-file
  "s" 'fsharp-eval-region)
(evil-leader/set-key-for-mode 'racket-mode
  "r" 'racket-run
  "s" 'racket-send-region)

(setq savehist-file "~/.emacs-history")
(savehist-mode 1)

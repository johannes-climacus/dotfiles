;; emacs metaconfiguration
(defun emacsd (path) (concat user-emacs-directory "/" path))
(add-to-list 'load-path (emacsd "init.d/")) 

;; emacs configuration
(mapc 'load '("straight"
              "aesthetics"
              "xah-switch-buffers"
              "toggle-window-split"
              "evil"
              "languages"
              "shells"))

;; don't litter
(setq backup-directory-alist '(("." . "~/.emacs-backups")))
(setq custom-file (emacsd "custom.el"))

;; deal with macOS $PATH weirdness
(straight-use-package 'exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; start with eshell
(setq inhibit-startup-screen t
      initial-buffer-choice (lambda ()
                              (eshell)
                              (switch-to-buffer "*eshell*")))


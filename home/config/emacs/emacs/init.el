;; Envrc
(envrc-global-mode)

;; Icons
(setq inhibit-compacting-font-caches t)

;; Projectile
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; Ivy
(ivy-mode 1)
(counsel-mode 1)
(setq enable-recursive-minibuffers t)
(setq ivy-count-format "(%d/%d) ")
(setq ivy-use-virtual-buffers t)

;; Display
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(setq inhibit-splash-screen t)
(setq inhibit-startup-screen t)
(setq initial-scratch-message ";; Happy hacking.")

;; Rust
(add-hook 'rust-mode-hook
	  (lambda ()
	    (setq indent-tabs-mode nil)))
(add-hook 'rust-mode-hook 'eglot-ensure)
(setq rust-format-on-save t)

;; Nix
(add-to-list 'auto-mode-alist '("\\.nix\\'" . nix-mode))

;; GENERAL
(set-face-attribute 'default nil :font "PragmataPro Liga-35")
(global-linum-mode 1)
(global-set-key (kbd "C-c f") 'counsel-file-jump)
(global-set-key (kbd "C-c b") 'counsel-down-directory)

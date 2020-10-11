;; additional packages
(prelude-require-packages '(ess julia-mode julia-snail flycheck-julia neotree))

;; neotree icons setup
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; keybindings
(define-key ivy-minibuffer-map (kbd "RET") 'ivy-alt-done)

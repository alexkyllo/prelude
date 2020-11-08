;; additional packages
(prelude-require-packages
 '(ess julia-mode julia-snail flycheck-julia
       neotree conda blacken poetry org-journal))

;; neotree icons setup
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; keybindings
(define-key ivy-minibuffer-map (kbd "RET") 'ivy-alt-done)

;; conda
(require 'conda)
;; set miniconda home
(custom-set-variables
 '(conda-anaconda-home "~/miniconda3/"))

(setq conda-env-home-directory (expand-file-name "~/miniconda3/"))
;; if you want interactive shell support, include:
(conda-env-initialize-interactive-shells)
;; if you want eshell support, include:
(conda-env-initialize-eshell)
;; if you want auto-activation (see below for details), include:
(conda-env-autoactivate-mode t)

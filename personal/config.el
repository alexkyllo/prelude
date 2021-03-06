;; additional packages
(prelude-require-packages
 '(ess julia-mode julia-snail flycheck-julia
       neotree all-the-icons conda blacken poetry
       org-journal cuda-mode pipenv markdown-mode
       poly-markdown poly-R irony flycheck-irony
       company-irony company-irony-c-headers))

;; neotree icons setup
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; keybindings
(define-key ivy-minibuffer-map (kbd "RET") 'ivy-alt-done)

;; turn off flyspell
(setq prelude-flyspell nil)

;; turn off scrollbar
(set-scroll-bar-mode nil)

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
;;(conda-env-autoactivate-mode t)
(exec-path-from-shell-copy-envs '("WORKON_HOME"))

(add-hook 'ess-mode-hook
          (lambda ()
            (ess-set-style 'RStudio)))

(add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+r-mode))

(global-prettify-symbols-mode 1)

(add-hook 'c++-mode-hook 'irony-mode)

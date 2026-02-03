(menu-bar-mode t)
(tool-bar-mode -1)

;; enable linum mode by default
(display-line-numbers-mode t)

;; enable column-number-mode
(column-number-mode t)


;; main theme
(unless (package-installed-p 'material-theme)
  (package-install 'material-theme))
(load-theme 'material t)

;; full screan mode
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

;; load nyan mode
(unless (package-installed-p 'nyan-mode)
  (package-install 'nyan-mode))
(nyan-mode t)

;; powerlin
(unless (package-installed-p 'powerline)
  (package-install 'powerline))
(require 'powerline)
(powerline-default-theme)
(setq powerline-arrow-shape 'curve)


(provide 'setup-appearance)

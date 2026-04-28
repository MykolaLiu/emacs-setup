(require 'package)

(setq package-archives
      '(("gnu"   . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")
        ("org"   . "https://orgmode.org/elpa/")))

(package-initialize)

(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'req-package)
  (package-install 'req-package))

(require 'req-package)
(setq req-package-always-ensure t)

(add-to-list 'load-path "~/.emacs.d/custom")

(require 'setup-general)
(require 'setup-editing)
(require 'setup-c)
(require 'setup-appearance)
(require 'setup-vertico)
(require 'setup-orderless)


;; function-args
;; (require 'function-args)
;; (fa-config-default)
;; (define-key c-mode-map  [(tab)] 'company-complete)
;; (define-key c++-mode-map  [(tab)] 'company-complete)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("f0c98535db38af17e81e491a77251e198241346306a90c25eb982b57e687d7c0" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "bce3ae31774e626dce97ed6d7781b4c147c990e48a35baedf67e185ebc544a56" "4e21fb654406f11ab2a628c47c1cbe53bab645d32f2c807ee2295436f09103c6" "aa0a998c0aa672156f19a1e1a3fb212cdc10338fb50063332a0df1646eb5dfea" "5715d3b4b071d33af95e9ded99a450aad674e308abb06442a094652a33507cd2" "a4d03266add9a1c8f12b5309612cbbf96e1291773c7bc4fb685bfdaf83b721c6" "e11569fd7e31321a33358ee4b232c2d3cf05caccd90f896e1df6cab228191109" "ff7625ad8aa2615eae96d6b4469fcc7d3d20b2e1ebc63b761a349bebbb9d23cb" "66881e95c0eda61d34aa7f08ebacf03319d37fe202d68ecf6a1dbfd49d664bc3" default))
 '(initial-frame-alist '((fullscreen . maximized)))
 '(package-selected-packages
   '(cmake-project cmake-mode vundo eglot ## pcomplete-extension company-c-headers ensime powerline zone-nyan zygospore helm-gtags helm yasnippet ws-butler volatile-highlights req-package undo-tree iedit dtrt-indent counsel-projectile company clean-aindent-mode anzu)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)

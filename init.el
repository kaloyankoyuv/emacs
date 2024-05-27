(dolist (my-package-list '(yasnippet vertico marginalia orderless corfu modus-themes))
  (unless (package-installed-p my-package-list)
    (package-install my-package-list)))

(defun prog-mode-init ()
  (display-line-numbers-mode)
  (hl-line-mode)
  (eglot-ensure)
  (add-hook 'before-save-hook 'eglot-format nil t))

(add-hook 'c++-mode-hook 'prog-mode-init)

(setq
 make-backup-files nil
 initial-scratch-message nil
 ring-bell-function 'ignore
 inhibit-startup-screen t
 
 tab-bar-new-button-show nil
 tab-bar-close-button-show nil
 
 scroll-margin 5
 scroll-conservatively 1000
 
 project-vc-merge-submodules nil
 
 custom-file "~/.config/emacs/custom.el"
 
 completion-styles '(orderless basic)
 completion-category-overrides '((file (styles basic partial-completion)))
 )

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(blink-cursor-mode 0)
(tab-bar-mode)

(electric-pair-mode)

(vertico-mode)
(marginalia-mode)
(global-corfu-mode)

(add-to-list 'default-frame-alist '(font . "Source Code Pro-10"))
(load-theme 'modus-vivendi t)

(load custom-file)


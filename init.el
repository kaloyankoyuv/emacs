(dolist (my-package-list '(yasnippet vertico marginalia orderless corfu ef-themes))
  (unless (package-installed-p my-package-list)
    (package-install my-package-list)))

(defun ts-mode-init ()
  (display-line-numbers-mode)
  (hl-line-mode)
  (eglot-ensure)
  (add-hook 'before-save-hook 'eglot-format nil t))

(add-to-list 'major-mode-remap-alist '(c-mode . c-ts-mode))
(add-to-list 'major-mode-remap-alist '(c++-mode . c++-ts-mode))
(add-to-list 'major-mode-remap-alist '(c-or-c++-mode . c-or-c++-ts-mode))

(add-hook 'c-ts-mode-hook 'ts-mode-init)
(add-hook 'c++-ts-mode-hook 'ts-mode-init)
(add-hook 'c-or-c++-ts-mode-hook 'ts-mode-init)

(setq
 make-backup-files nil
 initial-scratch-message nil
 ring-bell-function 'ignore
 inhibit-startup-screen t
 
 tab-bar-new-button-show nil
 tab-bar-close-button-show nil
 
 scroll-margin 5
 scroll-conservatively 1000
 
 treesit-font-lock-level 4

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
(load-theme 'ef-dream t)

(load custom-file)


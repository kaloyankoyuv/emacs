(dolist (my-package-list '(yasnippet))
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
 
 scroll-margin 5
 scroll-conservatively 1000
 
 completion-show-help nil
 completions-max-height 20
 completion-auto-select 'second-tab
 completions-format 'one-column
 completion-auto-help 'always
 
 custom-file "~/.config/emacs/custom.el"
 )

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(blink-cursor-mode 0)

(electric-pair-mode)

(add-to-list 'default-frame-alist '(font . "Liberation Mono-10"))
(load-theme 'modus-vivendi t)

(load custom-file)


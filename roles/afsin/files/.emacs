(when (fboundp 'global-font-lock-mode)
  (global-font-lock-mode t))
(setq inhibit-startup-message   t)   ; Don't want any startup message
(setq make-backup-files         nil) ; Don't want any backup files
(setq auto-save-list-file-name  nil) ; Don't want any .saves files
(setq auto-save-default         nil) ; Don't want any auto saving

(add-to-list 'auto-mode-alist '("\\.d\\'" . d-mode))
(autoload 'd-mode "d-mode" "Major mode for D programs" t)

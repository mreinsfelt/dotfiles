(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso)))
 '(initial-buffer-choice "~/Dropbox/org/todo.org")
 '(org-agenda-files
   (quote
    ("~/Dropbox/org/vstd.org" "~/Dropbox/org/todo.org" "~/Dropbox/org/cardisoft.org" "~/Dropbox/org/mcrt.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(global-linum-mode 1) ;display line numbers
(tool-bar-mode -1) ; disable toolbar
(scroll-bar-mode -1) ; disable scrollbar
;;(load-theme 'adwaita)

;;(global-set-key (kbd "C-w") 'backward-kill-word) ; Ctrl+
(global-set-key (kbd "C-z") 'undo) ; set undo

(require 'package)
(package-initialize)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
;; magit
(global-set-key (kbd "C-x g") 'magit-status)

;; projectile
(projectile-global-mode)

;; org-mode stuff
(global-set-key (kbd "C-c a") 'org-agenda)
(setq org-log-done 'time)

(setq org-agenda-custom-commands
           '(("o" "Agenda and Office-related tasks"
              ((agenda)
               (alltodo)))))

(add-to-list 'org-agenda-custom-commands
             '("W" "Weekly review"
               agenda ""
               ((org-agenda-span 'week)
                (org-agenda-start-on-weekday 0)
                (org-agenda-start-with-log-mode t)
                (org-agenda-skip-function
                 '(org-agenda-skip-entry-if 'nottodo 'done))
                 )))

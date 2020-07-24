;;; projectile-rcp.el --- Project manager for emacs

;;; Commentary:
;; 

;;; Code:

(use-package projectile
  :ensure t
  :defines projectile-globally-ignored-directories
  :config
  (projectile-mode)
  (add-to-list 'projectile-globally-ignored-directories "*bloop")
  (add-to-list 'projectile-globally-ignored-directories "*metals")
  :bind (:map projectile-mode-map
              ("C-c p" . projectile-command-map))
)

(provide 'projectile-rcp)

;;; projectile-rcp.el ends here

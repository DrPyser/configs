
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wheatgrass)))
 '(package-selected-packages
   (quote
    (markdown-mode+ scpaste smex find-file-in-project ido-ubiquitous idle-highlight-mode paredit better-defaults web-mode magit helm flycheck color-theme auto-complete)))
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

;; (require 'helm-config)

;; (global-set-key (kbd "M-x") 'helm-M-x)

;; (global-set-key (kbd "C-x C-f") 'helm-find-files)

;; (helm-mode 1)
		
(require 'ido)

(ido-mode t)

(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))

(require 'color-theme)
(color-theme-initialize)
(color-theme-tty-dark)

(defvar my-packages '(better-defaults paredit idle-highlight-mode ido-ubiquitous
                                      find-file-in-project magit smex scpaste))

(package-initialize)
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
                                        ; when Smex is auto-initialized on its first run.


(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(ido-everywhere 1)

(require 'ido-ubiquitous)
(ido-ubiquitous-mode 1)

(setq gnus-completing-read-function 'gnus-ido-completing-read)
(setq magit-completing-read-function 'magit-ido-completing-read)

;(server-start)
(add-to-list 'auto-mode-alist '("/mutt" . mail-mode))

(autoload 'notmuch "notmuch" "notmuch mail" t)

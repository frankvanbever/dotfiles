;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs 24 Personal configuration           ;;
;; Frank Vanbever - frank.vanbever@gmail.com ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list  'load-path "~/.emacs.d/lisp/")

;;;;;;;;;;;;;;;;;;;;;;
;; Packaging setup  ;;
;;;;;;;;;;;;;;;;;;;;;;

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)

;;;;;;;;;;;;;;
;; Settings ;; 
;;;;;;;;;;;;;;

(setq inhibit-splash-screen t) ;; inhibit splash screen 
(global-linum-mode 1) ;; enable global line number mode
(nyan-mode 1) ;; enable nyan-mode
(load-theme 'solarized-dark t) ;; load Solarized dark theme

(require 'auto-complete) ;; enable autocomplete mode 
(global-auto-complete-mode)

;;;;;;;;;;;;;;;
;; Evil Mode ;;
;;;;;;;;;;;;;;;

(require 'evil)
(evil-mode 1) ;; enable EVIL mode

;; change cursor color depending on Evil mode 
;; colors modified for solarized dark
(setq evil-emacs-state-cursor '("#dc322f" box))
(setq evil-normal-state-cursor '("#859900" box))
(setq evil-visual-state-cursor '("#cb4b16" box))
(setq evil-insert-state-cursor '("#dc322f" bar))
(setq evil-replace-state-cursor '("#dc322f" bar))
(setq evil-operator-state-cursor '("#dc322f" hollow))

;; make info mode play nicer with Evil mode
(define-key Info-mode-map "g" nil)
(define-key Info-mode-map ":" nil)




;; enable evil bindings for magit
(require 'evil-magit)

;;;;;;;;;;;;;;;
;; Helm Mode ;;
;;;;;;;;;;;;;;;

(require 'helm-config)
(helm-mode 1)

;;;;;;;;;;;;;;;
;; Org Mode  ;;
;;;;;;;;;;;;;;;

(add-hook 'org-mode-hook
	  (lambda()
	    (linum-mode 0)))

(setq org-src-fontify-natively t)

;;;;;;;;;;;;;;;;;;;;;;;;
;; Neotree            ;;
;;;;;;;;;;;;;;;;;;;;;;;;

(require 'neotree)
(global-set-key [F8] 'neotree-toggle)
(setq neo-theme (if window-system 'nerd 'arrows))

(add-hook 'neotree-mode-hook
	  (lambda()
	    (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
	    (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
	    (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
	    (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))



;;;;;;;;;;;;;;;;;;;;;;;;
;; Rainbow delimiters ;;
;;;;;;;;;;;;;;;;;;;;;;;;

(require 'rainbow-delimiters) 
(defun rainbowDelimiter-hook ()
  (rainbow-delimiters-mode 1))


;;;;;;;
;; C ;;
;;;;;;;

;; automatically indent C code
(defun c-autoindent-hook ()
  (local-set-key (kbd "RET") 'newline-and-indent))
(add-hook 'c-mode-hook 'c-autoindent-hook)

;; enable rainbow delimiters
(add-hook 'c-mode-hook 'rainbowDelimiter-hook)

;; set kernel as default style
(setq c-default-style "linux")

(require 'xcscope)
(cscope-setup)


;;;;;;;;;;;
;; ELisp ;;
;;;;;;;;;;;

;; enable rainbow delimiters
(add-hook 'emacs-lisp-mode-hook  'rainbowDelimiter-hook)

;;;;;;;;;;;
;; LaTeX ;;
;;;;;;;;;;;

(setq TeX-PDF-mode t)

;;;;;;;;;;;;
;; ggtags ;;
;;;;;;;;;;;;

;;(require 'ggtags)
;;(add-hook 'c-mode-common-hook
;;	  (lambda ()
;;	    (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
;;	      (ggtags-mode 1))))



;; HERE BE DRAGONS (and Custom modufications, do not touch)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 113 :width normal)))))
(put 'dired-find-alternate-file 'disabled nil)

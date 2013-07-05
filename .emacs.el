

;; Dark background
(defvar dark-background nil)

(defun toggle-dark-background ()
  (interactive)
  (let ((difficult-colors
         '("red" "blue" "medium blue")))
    (mapc
     (lambda (face)
       (and (member (face-attribute face :foreground)  difficult-colors)
            (set-face-bold-p face (not dark-background))))
     (face-list)))
  (setq dark-background (not dark-background)))

;; Auctex stuff

(setq TeX-parse-self t) ; Enable parse on load.
(setq TeX-auto-save t) ; Enable parse on save.
(setq-default TeX-master nil)

;; Start with dark mode activated

(toggle-dark-background)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(font-latex-math-face ((((class color) (background light)) (:foreground "lightgray")))))

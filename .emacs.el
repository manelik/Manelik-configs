

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

;; Start with dark mode activated

(toggle-dark-background)
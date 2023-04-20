(require 'cl-lib)

(use-package eshell-prompt-extras
  :ensure t)

(defun shortened-path (path max-len)
  "Return a modified version of `path', replacing some components
      with single characters starting from the left to try and get
      the path down to `max-len'"
  (let* ((components (split-string (abbreviate-file-name path) "/"))
         (len (+ (1- (length components))
                 (cl-reduce '+ components :key 'length)))
         (str ""))
    (while (and (> len max-len)
                (cdr components))
      (setq str (concat str (if (= 0 (length (car components)))
                                "/"
                              (string (elt (car components) 0) ?/)))
            len (- len (1- (length (car components))))
            components (cdr components)))
    (concat str (cl-reduce (lambda (a b) (concat a "/" b)) components))))

(with-eval-after-load "esh-opt"
  (setq eshell-highlight-prompt nil
        eshell-prompt-function
        (lambda ()
          (concat
           (epe-fish-path (eshell/pwd))
           " "
           (when (epe-git-p)
             (concat
              (epe-git-branch)
              (epe-git-dirty)))
           (epe-status)
           "\n"
           (if (= (user-uid) 0) " # " " > ")))))

(provide 'setup-eshell)

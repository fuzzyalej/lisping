(defun has-list (l)
  (if (null l)
    NIL
    (if (listp (car l))
      T
      (has-list (cdr l)))))

(print (has-list '(1 2 3 4)))
(print (has-list '((1 2) 1 2 3 4)))
(print (has-list '(1 (2 3) 4)))
(print (has-list '(1 2 3 4 (5))))
(print (has-list '(1 2 3 4())))

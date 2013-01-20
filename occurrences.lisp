(defun occurrences-iterative (x l)
  (let ((result 0))
    (dolist (el l)
      (if (eql x el)
        (setf result (1+ result))))
    result))

(print (occurrences-iterative 'a '(a b c d a e)))
(print (occurrences-iterative 'a '(b c d e)))

(print "-")

(defun occurrences-recursive (x l)
  (if (null l)
    0
    (progn
      (if (eql x (car l))
        (1+ (occurrences-recursive x (cdr l)))
        (occurrences-recursive x (cdr l))))))

(print (occurrences-recursive 'a '(a b c d a e)))
(print (occurrences-recursive 'a '(b c d e)))

(defun print-dots-iterative (x)
  (do ((i 0 (1+ i)))
    ((= i x) 'done))
  (print "."))

(print (print-dots-iterative 3))


(defun print-dots-recursive (x)
  (if (= x 0)
    'done
    (progn
      (print ".")
      (print-dots-recursive (1- x)))))

(print (print-dots-recursive 4))

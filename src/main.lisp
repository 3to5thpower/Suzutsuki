(in-package :suzutsuki)

(defun main (argv)
  ;(open-cell (car argv))
  (print (mapcar #'parse-cell (open-cell (car argv))))
)

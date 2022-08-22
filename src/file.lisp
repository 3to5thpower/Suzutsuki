(in-package :suzutsuki)

(defparameter pwd (user-homedir-pathname))

(let* ((pwd (truename "./"))
       (patharg (format nil "~p/*" pwd)))
    (directory patharg))

; 指定パス内の全てのlispファイルをcellデータとして読み込む
(defun open-cell (work-dir-path)
    (let ((dirs (directory 
        (format nil "~A~A" work-dir-path "/data/cell/*.lisp"))))
      (mapcar #'read-cell dirs)))

; 指定したファイルのcellデータを読んでListとして返却する
(defun read-cell (filepath)
    (with-open-file (in filepath :direction :input)
        (read in)))

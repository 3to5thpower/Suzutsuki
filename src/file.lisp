(in-package :suzutsuki)

(defparameter pwd (user-homedir-pathname))

(let* ((pwd (truename "./"))
       (patharg (format nil "~p/*" pwd)))
    (directory patharg))


; 指定したファイルのcellデータを読んでListとして返却する
(defun read-list (filepath)
    (with-open-file (in filepath :direction :input)
        (read in)))

; 指定パス内のファイルをデータとして読み込む関数を作る
; roveによるテストはパッケージを跨いだシンボル比較に失敗したので手動で動作確認済
(defmacro define-open-dir (dirname)
    (let ((path (format nil "/data/~A/*.lisp" dirname)))
        `(defun ,(intern (format nil "OPEN-~A" (string-upcase dirname))) (work-dir-path)
            (let ((dirs (directory  (format nil "~A~A" work-dir-path ,path))))
                (mapcar #'read-list dirs)))))

(define-open-dir "cell") 
(define-open-dir "code")

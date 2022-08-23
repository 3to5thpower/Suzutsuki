(in-package :suzutsuki)

; cellデータとなるリストを受け取ってcell構造体を返却する
(defun parse-cell (cell)
    (let ((attrs (subseq cell 0 4))
          (dna (nth 4 cell))
          (proteins (nth 5 cell)))
       (print attrs)
       (make-cell :attributes 
         (make-attributes :life-duration (car attrs)
            :life-left (cadr attrs) :fitness (caddr attrs)
            :num-codons (cadddr attrs))
         :dna dna :proteins proteins)))



; 細胞の成長を表現する関数
; cell -> cell
(defun get-codon (cell)
  (when (can-get-p (caddr cell))
      ))

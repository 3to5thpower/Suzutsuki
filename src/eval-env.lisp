(in-package :suzutsuki)

; cellデータとなるリストを受け取ってcell構造体を返却する
(defun parse-cell (cell)
    (let ((attrs (subseq cell 0 4))
          (dna (nth 4 cell))
          (proteins (nth 5 cell)))
       (make-cell
          :proteins proteins :dna nil :attributes nil)))
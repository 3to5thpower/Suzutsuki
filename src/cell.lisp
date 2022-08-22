(in-package :suzutsuki)

; 細胞の属性情報
(defvar default-lifeduration 100)
(defstruct attributes 
    (life-duration default-lifeduration) ; 寿命上限(サイクル数)
    (life-left default-lifeduration) ; 残りの寿命 
    (fitness 50) ; 適応度
    (num-codons 1)) ; 所持コドン数

; codonはLispコードデータで表される
;　DNAはcodonのリスト
;[todo] 突然変異の挙動設定フラグの追加
(defstruct codon (body nil) (len (length body)) (buffered-p nil))

; 細胞は属性情報、DNA、タンパク質の情報を持つ。
(defstruct cell (attributes nil) (dna nil) (proteins nil))
(defpackage suzutsuki
    (:use :cl)
    (:export :main)
    (:export :make-cell :make-codon :make-attributes :default-lifeduration
             :attributes-life-duration :attributes-life-left
             :attributes-fitness :attributes-num-codons
             :life-duration :codon-body :codon-len :codon-buffered-p)
    (:export :parse-cell))

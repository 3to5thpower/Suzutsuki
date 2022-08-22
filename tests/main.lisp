(defpackage suzutsuki/tests/main
  (:use :cl
        :suzutsuki
        :rove))
(in-package :suzutsuki/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :suzutsuki)' in your Lisp.


(deftest cell-test
  (testing "attributes"
    (ok (equalp (make-attributes) (make-attributes)))
    (let ((entity (make-attributes)))
      (ok (= (attributes-life-duration entity) 100))
      (ok (= (attributes-life-left entity) 100))
      (ok (= (attributes-fitness entity) 50))
      (ok (= (attributes-num-codons entity) 1))))
  (testing "codon"
    (ok (equalp (make-codon '((lambda (x) (1+ x)))) (make-codon '((lambda (x) (1+ x))))))
    (let ((entity (make-codon '((lambda (x) (1+ x))))))
      (ok (null (codon-buffered-p entity)))
      (ok (= (codon-len entity) 1))
      (ok (equalp (codon-body entity) '((lambda (x) (1+ x))))))))

(deftest eval-env
  (testing "parse-cell"
    (ok (equalp (parse-cell '(100 100 50 1 ((lambda (x) (1+ x))) ((lambda (x) (1+ x)))))
                (make-cell :attributes nil :dna nil 
                  :proteins '((lambda (x) (1+ x))))))))
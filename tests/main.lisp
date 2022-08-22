(defpackage suzutsuki/tests/main
  (:use :cl
        :suzutsuki
        :rove))
(in-package :suzutsuki/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :suzutsuki)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))

(deftest cell-test
  (testing "attributes"
    (ok (equalp (make-attributes) (make-attributes)))
    (let ((entity (make-attributes)))
      (ok (= (attributes-life-duration entity) 100))
      (ok (= (attributes-life-left entity) 100))
      (ok (= (attributes-fitness entity) 50))
      (ok (= (attributes-num-codons entity) 1))))
  (testing "codon"
    (ok (equalp (make-codon) (make-codon)))))

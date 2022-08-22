(defpackage suzutsuki/tests/main
  (:use :cl
        :suzutsuki
        :rove))
(in-package :suzutsuki/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :suzutsuki)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))

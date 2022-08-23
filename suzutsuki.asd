(defsystem "suzutsuki"
  :version "0.1.0"
  :author "sagoj0_"
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "package")
                 (:file "main" :depends-on ("cell"))
                 (:file "eval-env" :depends-on ("cell"))
                 (:file "file")
                 (:file "util")
                 (:file "cell"))))
  :description ""
  :in-order-to ((test-op (test-op "suzutsuki/tests"))))

(defsystem "suzutsuki/tests"
  :author "sagoj0_"
  :license ""
  :depends-on ("suzutsuki"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for suzutsuki"
  :perform (test-op (op c) (symbol-call :rove :run c)))


(cl:in-package :asdf)

(defsystem "scara_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "FinalJoints" :depends-on ("_package_FinalJoints"))
    (:file "_package_FinalJoints" :depends-on ("_package"))
  ))
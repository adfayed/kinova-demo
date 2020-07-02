
(cl:in-package :asdf)

(defsystem "jaco_fk-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "FKCheck" :depends-on ("_package_FKCheck"))
    (:file "_package_FKCheck" :depends-on ("_package"))
  ))
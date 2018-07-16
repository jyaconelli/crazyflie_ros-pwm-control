
(cl:in-package :asdf)

(defsystem "crazyflie_mpc-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GenericLogData" :depends-on ("_package_GenericLogData"))
    (:file "_package_GenericLogData" :depends-on ("_package"))
    (:file "LogBlock" :depends-on ("_package_LogBlock"))
    (:file "_package_LogBlock" :depends-on ("_package"))
    (:file "MotorControl" :depends-on ("_package_MotorControl"))
    (:file "_package_MotorControl" :depends-on ("_package"))
  ))
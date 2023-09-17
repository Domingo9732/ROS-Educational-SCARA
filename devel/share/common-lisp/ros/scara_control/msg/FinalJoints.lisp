; Auto-generated. Do not edit!


(cl:in-package scara_control-msg)


;//! \htmlinclude FinalJoints.msg.html

(cl:defclass <FinalJoints> (roslisp-msg-protocol:ros-message)
  ((position1
    :reader position1
    :initarg :position1
    :type cl:float
    :initform 0.0)
   (position2
    :reader position2
    :initarg :position2
    :type cl:float
    :initform 0.0)
   (position3
    :reader position3
    :initarg :position3
    :type cl:float
    :initform 0.0)
   (position4
    :reader position4
    :initarg :position4
    :type cl:float
    :initform 0.0)
   (position5
    :reader position5
    :initarg :position5
    :type cl:float
    :initform 0.0))
)

(cl:defclass FinalJoints (<FinalJoints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FinalJoints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FinalJoints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scara_control-msg:<FinalJoints> is deprecated: use scara_control-msg:FinalJoints instead.")))

(cl:ensure-generic-function 'position1-val :lambda-list '(m))
(cl:defmethod position1-val ((m <FinalJoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_control-msg:position1-val is deprecated.  Use scara_control-msg:position1 instead.")
  (position1 m))

(cl:ensure-generic-function 'position2-val :lambda-list '(m))
(cl:defmethod position2-val ((m <FinalJoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_control-msg:position2-val is deprecated.  Use scara_control-msg:position2 instead.")
  (position2 m))

(cl:ensure-generic-function 'position3-val :lambda-list '(m))
(cl:defmethod position3-val ((m <FinalJoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_control-msg:position3-val is deprecated.  Use scara_control-msg:position3 instead.")
  (position3 m))

(cl:ensure-generic-function 'position4-val :lambda-list '(m))
(cl:defmethod position4-val ((m <FinalJoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_control-msg:position4-val is deprecated.  Use scara_control-msg:position4 instead.")
  (position4 m))

(cl:ensure-generic-function 'position5-val :lambda-list '(m))
(cl:defmethod position5-val ((m <FinalJoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_control-msg:position5-val is deprecated.  Use scara_control-msg:position5 instead.")
  (position5 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FinalJoints>) ostream)
  "Serializes a message object of type '<FinalJoints>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FinalJoints>) istream)
  "Deserializes a message object of type '<FinalJoints>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position3) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position4) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position5) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FinalJoints>)))
  "Returns string type for a message object of type '<FinalJoints>"
  "scara_control/FinalJoints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FinalJoints)))
  "Returns string type for a message object of type 'FinalJoints"
  "scara_control/FinalJoints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FinalJoints>)))
  "Returns md5sum for a message object of type '<FinalJoints>"
  "712247e92305cbb82bc845aeb83a58bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FinalJoints)))
  "Returns md5sum for a message object of type 'FinalJoints"
  "712247e92305cbb82bc845aeb83a58bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FinalJoints>)))
  "Returns full string definition for message of type '<FinalJoints>"
  (cl:format cl:nil "float64 position1~%float64 position2~%float64 position3~%float64 position4~%float64 position5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FinalJoints)))
  "Returns full string definition for message of type 'FinalJoints"
  (cl:format cl:nil "float64 position1~%float64 position2~%float64 position3~%float64 position4~%float64 position5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FinalJoints>))
  (cl:+ 0
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FinalJoints>))
  "Converts a ROS message object to a list"
  (cl:list 'FinalJoints
    (cl:cons ':position1 (position1 msg))
    (cl:cons ':position2 (position2 msg))
    (cl:cons ':position3 (position3 msg))
    (cl:cons ':position4 (position4 msg))
    (cl:cons ':position5 (position5 msg))
))

; Auto-generated. Do not edit!


(cl:in-package jaco_fk-srv)


;//! \htmlinclude FKCheck-request.msg.html

(cl:defclass <FKCheck-request> (roslisp-msg-protocol:ros-message)
  ((joint_1_req
    :reader joint_1_req
    :initarg :joint_1_req
    :type cl:float
    :initform 0.0)
   (joint_2_req
    :reader joint_2_req
    :initarg :joint_2_req
    :type cl:float
    :initform 0.0)
   (joint_3_req
    :reader joint_3_req
    :initarg :joint_3_req
    :type cl:float
    :initform 0.0)
   (joint_4_req
    :reader joint_4_req
    :initarg :joint_4_req
    :type cl:float
    :initform 0.0)
   (joint_5_req
    :reader joint_5_req
    :initarg :joint_5_req
    :type cl:float
    :initform 0.0)
   (joint_6_req
    :reader joint_6_req
    :initarg :joint_6_req
    :type cl:float
    :initform 0.0))
)

(cl:defclass FKCheck-request (<FKCheck-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FKCheck-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FKCheck-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jaco_fk-srv:<FKCheck-request> is deprecated: use jaco_fk-srv:FKCheck-request instead.")))

(cl:ensure-generic-function 'joint_1_req-val :lambda-list '(m))
(cl:defmethod joint_1_req-val ((m <FKCheck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaco_fk-srv:joint_1_req-val is deprecated.  Use jaco_fk-srv:joint_1_req instead.")
  (joint_1_req m))

(cl:ensure-generic-function 'joint_2_req-val :lambda-list '(m))
(cl:defmethod joint_2_req-val ((m <FKCheck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaco_fk-srv:joint_2_req-val is deprecated.  Use jaco_fk-srv:joint_2_req instead.")
  (joint_2_req m))

(cl:ensure-generic-function 'joint_3_req-val :lambda-list '(m))
(cl:defmethod joint_3_req-val ((m <FKCheck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaco_fk-srv:joint_3_req-val is deprecated.  Use jaco_fk-srv:joint_3_req instead.")
  (joint_3_req m))

(cl:ensure-generic-function 'joint_4_req-val :lambda-list '(m))
(cl:defmethod joint_4_req-val ((m <FKCheck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaco_fk-srv:joint_4_req-val is deprecated.  Use jaco_fk-srv:joint_4_req instead.")
  (joint_4_req m))

(cl:ensure-generic-function 'joint_5_req-val :lambda-list '(m))
(cl:defmethod joint_5_req-val ((m <FKCheck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaco_fk-srv:joint_5_req-val is deprecated.  Use jaco_fk-srv:joint_5_req instead.")
  (joint_5_req m))

(cl:ensure-generic-function 'joint_6_req-val :lambda-list '(m))
(cl:defmethod joint_6_req-val ((m <FKCheck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaco_fk-srv:joint_6_req-val is deprecated.  Use jaco_fk-srv:joint_6_req instead.")
  (joint_6_req m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FKCheck-request>) ostream)
  "Serializes a message object of type '<FKCheck-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_1_req))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_2_req))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_3_req))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_4_req))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_5_req))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_6_req))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FKCheck-request>) istream)
  "Deserializes a message object of type '<FKCheck-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_1_req) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_2_req) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_3_req) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_4_req) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_5_req) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_6_req) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FKCheck-request>)))
  "Returns string type for a service object of type '<FKCheck-request>"
  "jaco_fk/FKCheckRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FKCheck-request)))
  "Returns string type for a service object of type 'FKCheck-request"
  "jaco_fk/FKCheckRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FKCheck-request>)))
  "Returns md5sum for a message object of type '<FKCheck-request>"
  "1640fd7a9e24c82d413046f60fbdc596")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FKCheck-request)))
  "Returns md5sum for a message object of type 'FKCheck-request"
  "1640fd7a9e24c82d413046f60fbdc596")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FKCheck-request>)))
  "Returns full string definition for message of type '<FKCheck-request>"
  (cl:format cl:nil "float64 joint_1_req~%float64 joint_2_req~%float64 joint_3_req~%float64 joint_4_req~%float64 joint_5_req~%float64 joint_6_req~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FKCheck-request)))
  "Returns full string definition for message of type 'FKCheck-request"
  (cl:format cl:nil "float64 joint_1_req~%float64 joint_2_req~%float64 joint_3_req~%float64 joint_4_req~%float64 joint_5_req~%float64 joint_6_req~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FKCheck-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FKCheck-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FKCheck-request
    (cl:cons ':joint_1_req (joint_1_req msg))
    (cl:cons ':joint_2_req (joint_2_req msg))
    (cl:cons ':joint_3_req (joint_3_req msg))
    (cl:cons ':joint_4_req (joint_4_req msg))
    (cl:cons ':joint_5_req (joint_5_req msg))
    (cl:cons ':joint_6_req (joint_6_req msg))
))
;//! \htmlinclude FKCheck-response.msg.html

(cl:defclass <FKCheck-response> (roslisp-msg-protocol:ros-message)
  ((in_collision
    :reader in_collision
    :initarg :in_collision
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass FKCheck-response (<FKCheck-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FKCheck-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FKCheck-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jaco_fk-srv:<FKCheck-response> is deprecated: use jaco_fk-srv:FKCheck-response instead.")))

(cl:ensure-generic-function 'in_collision-val :lambda-list '(m))
(cl:defmethod in_collision-val ((m <FKCheck-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaco_fk-srv:in_collision-val is deprecated.  Use jaco_fk-srv:in_collision instead.")
  (in_collision m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FKCheck-response>) ostream)
  "Serializes a message object of type '<FKCheck-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_collision) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FKCheck-response>) istream)
  "Deserializes a message object of type '<FKCheck-response>"
    (cl:setf (cl:slot-value msg 'in_collision) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FKCheck-response>)))
  "Returns string type for a service object of type '<FKCheck-response>"
  "jaco_fk/FKCheckResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FKCheck-response)))
  "Returns string type for a service object of type 'FKCheck-response"
  "jaco_fk/FKCheckResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FKCheck-response>)))
  "Returns md5sum for a message object of type '<FKCheck-response>"
  "1640fd7a9e24c82d413046f60fbdc596")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FKCheck-response)))
  "Returns md5sum for a message object of type 'FKCheck-response"
  "1640fd7a9e24c82d413046f60fbdc596")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FKCheck-response>)))
  "Returns full string definition for message of type '<FKCheck-response>"
  (cl:format cl:nil "bool in_collision~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FKCheck-response)))
  "Returns full string definition for message of type 'FKCheck-response"
  (cl:format cl:nil "bool in_collision~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FKCheck-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FKCheck-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FKCheck-response
    (cl:cons ':in_collision (in_collision msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FKCheck)))
  'FKCheck-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FKCheck)))
  'FKCheck-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FKCheck)))
  "Returns string type for a service object of type '<FKCheck>"
  "jaco_fk/FKCheck")
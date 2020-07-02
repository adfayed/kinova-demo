;; Auto-generated. Do not edit!


(when (boundp 'jaco_fk::FKCheck)
  (if (not (find-package "JACO_FK"))
    (make-package "JACO_FK"))
  (shadow 'FKCheck (find-package "JACO_FK")))
(unless (find-package "JACO_FK::FKCHECK")
  (make-package "JACO_FK::FKCHECK"))
(unless (find-package "JACO_FK::FKCHECKREQUEST")
  (make-package "JACO_FK::FKCHECKREQUEST"))
(unless (find-package "JACO_FK::FKCHECKRESPONSE")
  (make-package "JACO_FK::FKCHECKRESPONSE"))

(in-package "ROS")





(defclass jaco_fk::FKCheckRequest
  :super ros::object
  :slots (_joint_1_req _joint_2_req _joint_3_req _joint_4_req _joint_5_req _joint_6_req ))

(defmethod jaco_fk::FKCheckRequest
  (:init
   (&key
    ((:joint_1_req __joint_1_req) 0.0)
    ((:joint_2_req __joint_2_req) 0.0)
    ((:joint_3_req __joint_3_req) 0.0)
    ((:joint_4_req __joint_4_req) 0.0)
    ((:joint_5_req __joint_5_req) 0.0)
    ((:joint_6_req __joint_6_req) 0.0)
    )
   (send-super :init)
   (setq _joint_1_req (float __joint_1_req))
   (setq _joint_2_req (float __joint_2_req))
   (setq _joint_3_req (float __joint_3_req))
   (setq _joint_4_req (float __joint_4_req))
   (setq _joint_5_req (float __joint_5_req))
   (setq _joint_6_req (float __joint_6_req))
   self)
  (:joint_1_req
   (&optional __joint_1_req)
   (if __joint_1_req (setq _joint_1_req __joint_1_req)) _joint_1_req)
  (:joint_2_req
   (&optional __joint_2_req)
   (if __joint_2_req (setq _joint_2_req __joint_2_req)) _joint_2_req)
  (:joint_3_req
   (&optional __joint_3_req)
   (if __joint_3_req (setq _joint_3_req __joint_3_req)) _joint_3_req)
  (:joint_4_req
   (&optional __joint_4_req)
   (if __joint_4_req (setq _joint_4_req __joint_4_req)) _joint_4_req)
  (:joint_5_req
   (&optional __joint_5_req)
   (if __joint_5_req (setq _joint_5_req __joint_5_req)) _joint_5_req)
  (:joint_6_req
   (&optional __joint_6_req)
   (if __joint_6_req (setq _joint_6_req __joint_6_req)) _joint_6_req)
  (:serialization-length
   ()
   (+
    ;; float64 _joint_1_req
    8
    ;; float64 _joint_2_req
    8
    ;; float64 _joint_3_req
    8
    ;; float64 _joint_4_req
    8
    ;; float64 _joint_5_req
    8
    ;; float64 _joint_6_req
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _joint_1_req
       (sys::poke _joint_1_req (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint_2_req
       (sys::poke _joint_2_req (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint_3_req
       (sys::poke _joint_3_req (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint_4_req
       (sys::poke _joint_4_req (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint_5_req
       (sys::poke _joint_5_req (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint_6_req
       (sys::poke _joint_6_req (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _joint_1_req
     (setq _joint_1_req (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint_2_req
     (setq _joint_2_req (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint_3_req
     (setq _joint_3_req (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint_4_req
     (setq _joint_4_req (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint_5_req
     (setq _joint_5_req (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint_6_req
     (setq _joint_6_req (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass jaco_fk::FKCheckResponse
  :super ros::object
  :slots (_in_collision ))

(defmethod jaco_fk::FKCheckResponse
  (:init
   (&key
    ((:in_collision __in_collision) nil)
    )
   (send-super :init)
   (setq _in_collision __in_collision)
   self)
  (:in_collision
   (&optional __in_collision)
   (if __in_collision (setq _in_collision __in_collision)) _in_collision)
  (:serialization-length
   ()
   (+
    ;; bool _in_collision
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _in_collision
       (if _in_collision (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _in_collision
     (setq _in_collision (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass jaco_fk::FKCheck
  :super ros::object
  :slots ())

(setf (get jaco_fk::FKCheck :md5sum-) "1640fd7a9e24c82d413046f60fbdc596")
(setf (get jaco_fk::FKCheck :datatype-) "jaco_fk/FKCheck")
(setf (get jaco_fk::FKCheck :request) jaco_fk::FKCheckRequest)
(setf (get jaco_fk::FKCheck :response) jaco_fk::FKCheckResponse)

(defmethod jaco_fk::FKCheckRequest
  (:response () (instance jaco_fk::FKCheckResponse :init)))

(setf (get jaco_fk::FKCheckRequest :md5sum-) "1640fd7a9e24c82d413046f60fbdc596")
(setf (get jaco_fk::FKCheckRequest :datatype-) "jaco_fk/FKCheckRequest")
(setf (get jaco_fk::FKCheckRequest :definition-)
      "float64 joint_1_req
float64 joint_2_req
float64 joint_3_req
float64 joint_4_req
float64 joint_5_req
float64 joint_6_req
---
bool in_collision

")

(setf (get jaco_fk::FKCheckResponse :md5sum-) "1640fd7a9e24c82d413046f60fbdc596")
(setf (get jaco_fk::FKCheckResponse :datatype-) "jaco_fk/FKCheckResponse")
(setf (get jaco_fk::FKCheckResponse :definition-)
      "float64 joint_1_req
float64 joint_2_req
float64 joint_3_req
float64 joint_4_req
float64 joint_5_req
float64 joint_6_req
---
bool in_collision

")



(provide :jaco_fk/FKCheck "1640fd7a9e24c82d413046f60fbdc596")



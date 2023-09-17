;; Auto-generated. Do not edit!


(when (boundp 'scara_control::FinalJoints)
  (if (not (find-package "SCARA_CONTROL"))
    (make-package "SCARA_CONTROL"))
  (shadow 'FinalJoints (find-package "SCARA_CONTROL")))
(unless (find-package "SCARA_CONTROL::FINALJOINTS")
  (make-package "SCARA_CONTROL::FINALJOINTS"))

(in-package "ROS")
;;//! \htmlinclude FinalJoints.msg.html


(defclass scara_control::FinalJoints
  :super ros::object
  :slots (_position1 _position2 _position3 _position4 _position5 ))

(defmethod scara_control::FinalJoints
  (:init
   (&key
    ((:position1 __position1) 0.0)
    ((:position2 __position2) 0.0)
    ((:position3 __position3) 0.0)
    ((:position4 __position4) 0.0)
    ((:position5 __position5) 0.0)
    )
   (send-super :init)
   (setq _position1 (float __position1))
   (setq _position2 (float __position2))
   (setq _position3 (float __position3))
   (setq _position4 (float __position4))
   (setq _position5 (float __position5))
   self)
  (:position1
   (&optional __position1)
   (if __position1 (setq _position1 __position1)) _position1)
  (:position2
   (&optional __position2)
   (if __position2 (setq _position2 __position2)) _position2)
  (:position3
   (&optional __position3)
   (if __position3 (setq _position3 __position3)) _position3)
  (:position4
   (&optional __position4)
   (if __position4 (setq _position4 __position4)) _position4)
  (:position5
   (&optional __position5)
   (if __position5 (setq _position5 __position5)) _position5)
  (:serialization-length
   ()
   (+
    ;; float64 _position1
    8
    ;; float64 _position2
    8
    ;; float64 _position3
    8
    ;; float64 _position4
    8
    ;; float64 _position5
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _position1
       (sys::poke _position1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _position2
       (sys::poke _position2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _position3
       (sys::poke _position3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _position4
       (sys::poke _position4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _position5
       (sys::poke _position5 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _position1
     (setq _position1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _position2
     (setq _position2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _position3
     (setq _position3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _position4
     (setq _position4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _position5
     (setq _position5 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get scara_control::FinalJoints :md5sum-) "712247e92305cbb82bc845aeb83a58bf")
(setf (get scara_control::FinalJoints :datatype-) "scara_control/FinalJoints")
(setf (get scara_control::FinalJoints :definition-)
      "float64 position1
float64 position2
float64 position3
float64 position4
float64 position5

")



(provide :scara_control/FinalJoints "712247e92305cbb82bc845aeb83a58bf")



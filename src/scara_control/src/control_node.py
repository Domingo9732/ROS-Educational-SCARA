#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import JointState
from scara_control.msg import FinalJoints
import math

arm_steps = FinalJoints()
total = FinalJoints()
steps = [12000, 25000, 14200, 4500]
joint_status = 0
cur_angle = [0, 0, 0, 0]
joint_step = [0, 0, 0, 0]
prev_angle = [0, 0, 0, 0]
init_angle = [0, 0, 0, 0]
total_steps = [0, 0, 0, 0]
count = 0

def cmd_cb(cmd_arm):
    global count
    global prev_angle
    global init_angle

    if count == 0:
        prev_angle = cmd_arm.position[:4]
        init_angle = cmd_arm.position[:4]



    for i in range(4):
        joint_step[i] = int((cmd_arm.position[i] - prev_angle[i]) * steps[i] / (2 * math.pi))

    arm_steps.position1 = joint_step[0]
    arm_steps.position2 = joint_step[1] * 25
    arm_steps.position3 = joint_step[2]
    arm_steps.position4 = joint_step[3]
    arm_steps.position5 = cmd_arm.position[4] * 76000

    if count != 0:
        prev_angle = cmd_arm.position[:4]

    total.position1 += arm_steps.position1
    total.position2 += arm_steps.position2
    total.position3 += arm_steps.position3
    total.position4 += arm_steps.position4
 

    global joint_status
    joint_status = 1
    count = 1

def main():
    global joint_status

    rospy.init_node("scara_control")
    rospy.Subscriber("/joint_states", JointState, cmd_cb)
    pub = rospy.Publisher("joint_steps", FinalJoints, queue_size=50)

    rate = rospy.Rate(20)

    while not rospy.is_shutdown():
        if joint_status == 1:
            joint_status = 0
            pub.publish(total)
            rate = rospy.Rate(20)  # Reset the rate for the next cycle
        rate.sleep()  # Sleep to control the loop rate


if __name__ == "__main__":
    main()


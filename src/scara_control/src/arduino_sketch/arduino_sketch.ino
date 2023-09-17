#include <ros.h>
#include <scara_control/FinalJoints.h>
#include <Servo.h> 
#include <std_msgs/Bool.h>
#include <std_msgs/String.h>
#include <math.h>
#include <std_msgs/Int16.h>
#include <std_msgs/UInt16.h>
#include <AccelStepper.h>
#include <MultiStepper.h>


AccelStepper joint1(1, 2, 5);
AccelStepper joint2(1, 12, 13);
AccelStepper joint3(1, 4, 7);
AccelStepper joint4(1, 3, 6);

Servo gripper;
MultiStepper steppers;

const int limitSwitchPins[] = {11, A3, 9, 10};

int joint_step[5];
int joint_positions[5];
int joint_status = 0;
int homingStepValue = 1;
ros::NodeHandle nh;
std_msgs::Int16 msg;

void homing() {
  homingStepValue = -1;  
  while(digitalRead(11) != 1){    
    joint1.moveTo(homingStepValue);
    homingStepValue--;
    joint1.run();
  }
  Serial.println(digitalRead(11));

  /*homingStepValue = -1; 
  while(digitalRead(A3) == 1){    
    joint2.moveTo(homingStepValue);
    homingStepValue--;
    joint2.run();
    delay(1);
  }
  Serial.println(digitalRead(A3));
  */
  homingStepValue = -1;  
  while(digitalRead(10) != 1){    
    joint3.moveTo(homingStepValue);
    homingStepValue--;
    joint3.run();
    delay(1);
  }
  Serial.println(digitalRead(10));

  homingStepValue = 1;  
  while(digitalRead(9) != 1){    
    joint4.moveTo(homingStepValue);
    homingStepValue++;
    joint4.run();
    delay(1);
  }
  Serial.println(digitalRead(9));

  joint1.setCurrentPosition(0);
  joint2.setCurrentPosition(0);
  joint3.setCurrentPosition(0);
  joint4.setCurrentPosition(0);
}

void arm_cb(const scara_control::FinalJoints& arm_steps){
  joint_status = 1;
  joint_step[0] = arm_steps.position1;
  joint_step[1] = - arm_steps.position2;
  joint_step[2] = arm_steps.position3;
  joint_step[3] = - arm_steps.position4;
  joint_step[4] = - arm_steps.position5 + 600;

}



ros::Subscriber<scara_control::FinalJoints> arm_sub("joint_steps",arm_cb);


void setup() {
  //put your setup code here, to run once:
  nh.getHardware()->setBaud(57600); 
  Serial.begin(115200);
  joint_status = 0;
  pinMode(11, INPUT_PULLUP);
  pinMode(10, INPUT_PULLUP);
  pinMode(9, INPUT_PULLUP);
  pinMode(A3, INPUT_PULLUP);

  nh.initNode();
  nh.subscribe(arm_sub);
  
  joint1.setMaxSpeed(1500);
  joint2.setMaxSpeed(2000);
  joint3.setMaxSpeed(2000);
  joint4.setMaxSpeed(2000);

  joint1.setAcceleration(2000);
  joint2.setAcceleration(2000);
  joint3.setAcceleration(2000);
  joint4.setAcceleration(2000);

  steppers.addStepper(joint1);
  steppers.addStepper(joint2);
  steppers.addStepper(joint3);
  steppers.addStepper(joint4);

  gripper.attach(A0,600,2500);
  
  homing();
  delay(50);
}

void loop() {
  if (joint_status == 1)
  { 
    long positions[4];

    positions[0] = joint_step[0];
    positions[1] = joint_step[1];
    positions[2] = -joint_step[2];
    positions[3] = -joint_step[3];

    joint1.setSpeed(400);
    joint2.setSpeed(400);
    joint3.setSpeed(400);
    joint4.setSpeed(400);

    joint1.setAcceleration(200);
    joint2.setAcceleration(200);
    joint3.setAcceleration(200);
    joint4.setAcceleration(200);

    joint1.moveTo(positions[0]);
    joint2.moveTo(positions[1]);
    joint3.moveTo(positions[3]);
    joint4.moveTo(positions[2]);

    while (joint1.currentPosition() != positions[0] || joint2.currentPosition() != positions[1] || joint3.currentPosition() != positions[3] || joint4.currentPosition() != positions[2]) {
      joint1.run();
      joint2.run();
      joint3.run();
      joint4.run();
  }
  delay(100);
    
  gripper.write(joint_step[4]);
  }
  
  joint_status = 0;
  
  nh.spinOnce();
  delay(1);
  
}
#include <ros.h>
#include <Arduino.h>
#include <std_msgs/Empty.h>
#include <std_msgs/Int8.h>
#include "A4988.h"
#include <sensor_msgs/JointState.h> // Replace with the actual message type

// using a 200-step motor (most common)
#define MOTOR_STEPS 200
// configure the pins connected
#define STEP1 2
#define DIR1 5
#define STEP2 3
#define DIR2 6
#define STEP3 4
#define DIR3 7

ros::NodeHandle  nh;
sensor_msgs::JointState msg;

float positions[4] = {0, 0, 0, 0};
int new_state = 0;

A4988 stepper1(MOTOR_STEPS, DIR1, STEP1);
A4988 stepper2(MOTOR_STEPS, DIR2, STEP2);
A4988 stepper3(MOTOR_STEPS, DIR3, STEP3);


void jointsCallback(const sensor_msgs::JointState msg) {
  positions[0] = msg.position1 * 57.34;
  positions[1] = msg.position2 * 57.34;
  positions[2] = msg.position3 * 57.34;
  positions[3] = msg.position4 * 57.34; 
  new_state = 1;
  
}

ros::Subscriber<sensor_msgs::JointState> sub("joint_state", jointsCallback);


void setup() { 
    for (int i = 2; i < 8; ++i) {
    pinMode(i, OUTPUT);
  }
  
  nh.getHardware()->setBaud(115200);
  nh.initNode();
  
  nh.subscribe(sub);
}

void loop() {  
  if (new_state == 1){
    digitalWrite(0, HIGH);
    stepper1.begin(16, 16);
    stepper1.rotate(positions[0]);
    digitalWrite(0, LOW);
    new_state = 0;
  }

  
  nh.spinOnce();
  delay(1);
}
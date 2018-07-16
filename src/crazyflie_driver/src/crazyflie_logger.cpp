#include "ros/ros.h"
#include "std_msgs/String.h"
#include "crazyflie_driver/GenericLogData.h"

#include <sstream>


void chatterCallback(const crazyflie_driver::GenericLogData::ConstPtr& msg)
{
  uint16_t prex, prey, prez, preax, preay, preaz;
     float x, y, z, ax, ay, az;
  uint32_t packed_l = msg->values[0];
  uint32_t packed_a = msg->values[1];

  uint64_t packed   = packed_l + ((uint64_t) packed_a << 32);

  ROS_INFO("I received: %016X \t and\t %016X.\t Together: %016X", packed_l, packed_a, packed);

  prex  =  packed        & 0b1111111111;
  prey  = (packed >> 10) & 0b1111111111;
  prez  = (packed >> 20) & 0b1111111111;
  preax = (packed >> 32) & 0b1111111111;
  preay = (packed >> 42) & 0b1111111111;
  preaz = (packed >> 52) & 0b1111111111;
  
  x = ((float) prex / 10.23f) - 50;
  y = ((float) prey / 10.23f) - 50;
  z = ((float) prez / 10.23f) - 50;

  ax = ((float) preax / 1.42f) - 360;
  ay = ((float) preay / 1.42f) - 360;
  az = ((float) preaz / 1.42f) - 360;

  ROS_INFO("I heard: [x: %f y: %f z: %f ax: %f ay: %f az: %f]", x, y, z, ax, ay, az);

}

int main(int argc, char** argv)
{

  ros::init(argc, argv, "logger");

  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("crazyflie/log_compact_imu", 20, chatterCallback);

  ros::Rate loop_rate(200);

  ros::spin();

  return 0;

}

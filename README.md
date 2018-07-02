crazyflie_ros-pwm-control
=============

## Installation

Clone the package into your catkin workspace:
```
git clone https://github.com/josephyaconelli/crazyflie_ros-pwm-control.git
cd crazyflie_ros
git submodule init
git submodule update
```

Use `catkin_make` on your workspace to compile.

To build and run:
```
./run.bash
```
If you have issues running-- check the run.bash script. You may need to change the joy_dev location or crazyflie uri.

For more information, look at the readme for https://github.com/whoenig/crazyflie_ros.git
Most of it will still pertain to this project.

Control messages are send on the /crazyflie/cmd_vel topic in the form of /crazyflie_driver/MotorControl messages:
```
uint16 m1
uint16 m2
uint16 m3
uint16 m4
```

catkin_make
source devel/setup.bash
roslaunch crazyflie_demo teleop_xbox360.launch uri:=radio://0/80/250K joy_dev:=/dev/input/js3


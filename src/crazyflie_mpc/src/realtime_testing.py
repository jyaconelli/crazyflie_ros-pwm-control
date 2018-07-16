import torch
from torch.nn import MSELoss

from controllers import randController, MPController
from dynamics_ionocraft import IonoCraft
from dynamics_crazyflie_linearized import CrazyFlie
from dynamics import *
import numpy as np

from utils_data import *




############# ROS INTEGRATION ################

import rospy
from crazyflie_driver.msg import MotorControl


x_prev = -1
received = -1

begunReceiving = False

def callback(data):
  begunReceiving = True
  rospy.loginfo(rospy.get_caller_id() + "I heard this %s", data.data)
  x_prev = data.data
  received = millis()

pub = rospy.Publisher('/cmd_vel', MotorControl, queue_size = 1)

rospy.init_node('MPController', anonymous=True)
rospy.Subscriber('/log_compact_imu', MotorControl, callback)
rate = rospy.Rate(100) # 100 hz


########################################################################
testTime = 5000  	# Time to run realtime test, in ms



############################# Get Dynamics Obj #########################

dt_x = 0.01 # dynamics update
dt_u = 0.01 # measurement update

crazy = CrazyFlie(dt_x, x_noise = 0.000)

############################### Get NN Model ###########################
print('Loading offline model')
#newNN = torch.load('_models/2018-07-12_general_temp.pth')
newNN = torch.load('_models/clean_flie_hover_long.pth')

################################ Obj Fnc ################################
origin_minimizer = Objective(np.linalg.norm, 'min', 6, dim_to_eval=[6,7,8,12,13,14])
print('...Objective Function Initialized')

################################ MPC ####################################
#mpc1 = MPController(newNN, crazy, dt_x, dt_u, origin_minimizer, N=50, T=5, variance = .00003)
mpc1 = MPController(newNN, crazy, dt_x, dt_u, origin_minimizer, N=50, T=5, variance = .003)
print('...MPC Running')


######################## Controller Input/Output ##################
start_time = datetime.now()


while  millis() < testTime:
  while not rospy.is_shutdown():
	# get current state
	#x_prev = parseFlie   # WRITE DIS
	#receieved = millis()

	# generate new u
        if begunReceiving:
	  u = mpc1.update(x_prev)   # UPDATE SHOULD RETURN PWMs
	  generated = millis()

	# pass new u to ROS node

        msg = MotorControl()

        msg.m1 = u[0]
        msg.m2 = u[1]
        msg.m3 = u[2]
        msg.m4 = u[3]

        pub.publish(msg)

	# print for debugging / viewing timestamps to measure control latency and update frequ.
	print (receieved, xprev, generated, u)

        rate.sleep()

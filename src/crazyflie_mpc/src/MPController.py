#!/usr/bin/env python


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
import rospkg
import os
from crazyflie_driver.msg import MotorControl, GenericLogData, LogBlock

rp = rospkg.RosPack()

#model_path = os.path.join(rp.get_path("crazyflie_mpc"), "src", "2018-07-12_general_temp.pth")
#model_path = os.path.join(rp.get_path("crazyflie_mpc"), "src", "clean_flie_hover_long.pth")
model_path = os.path.join(rp.get_path("crazyflie_mpc"), "src", "9_state_200_w.pth")
#model_path = os.path.join(rp.get_path("crazyflie_mpc"), "src", "large_state_pnn.pth")

x_prev = np.zeros([12])
received = -1
generated = -1
begunReceiving = False

totalTimes = 0
totalRuns = 0

totalReceived = 0

def callback(data):
  begunReceiving = True
  global received 
  received = millis()
  global totalReceived
  totalReceived += 1
  #print "\n\n\n\ncallback hz: ", (totalReceived / (millis() * 0.001))

  #p = np.zeros([1])
  #p[0] = data.values[2]

  #l = np.zeros([1])
  #l[0] = data.values[1]

  #a = np.zeros([1])
  #a[0] = data.values[0]

  #pwms = unpack_cf_pwm(p)
  #imu = unpack_cf_imu(l,a)

  #print("PWM: ", pwms, " IMU: ", imu)

  x_prev[6] = data.values[0]
  x_prev[7] = data.values[1]
  x_prev[8] = data.values[2]


def nodecontroller():
  pub = rospy.Publisher('/cmd_vel', MotorControl, queue_size = 1)

  rospy.init_node('MPController', anonymous=True)
  rospy.Subscriber('/state_data', GenericLogData, callback)
  rate = rospy.Rate(100) # 100 hz


########################################################################
  testTime = 5000  	# Time to run realtime test, in ms



############################# Get Dynamics Obj #########################

  dt_x = 0.01 # dynamics update
  dt_u = 0.01 # measurement update

  crazy = CrazyFlie(dt_x, x_noise = 0.000)

############################### Get NN Model ###########################
  print('Loading offline model')
  newNN = torch.load(model_path)


################################ Obj Fnc ################################
  #origin_minimizer = Objective(np.linalg.norm, 'min', 9, dim_to_eval=[0,1,2,3,4,5,6,7,8])
  origin_minimizer = Objective(np.linalg.norm, 'min', 3, dim_to_eval=[6,7,8])
  print('...Objective Function Initialized')

################################ MPC ####################################
  mpc1 = MPController(newNN, crazy, dt_x, dt_u, origin_minimizer, N=10, T=3, variance = 0.0003)
  print('...MPC Running')


######################## Controller Input/Output ##################
  start_time = datetime.now()


  while  millis() < testTime:
    if not rospy.is_shutdown():
#        key = getkey()
#        if key == 'q':
#          msg = MotorControl()
#          msg.m1 = 0
#          msg.m2 = 0
#          msg.m3 = 0
#          msg.m4 = 0
#          pub.publish(msg)
#          quit()

        # get current state
        #x_prev = parseFlie   # WRITE DIS
        #receieved = millis()

        # generate new u
        #u = np.zeros([4])
        #if begunReceiving:
        u = mpc1.update(x_prev)   # UPDATE SHOULD RETURN PWMs
        #print("U UPDATEED: ", u)
        #print("U IS: ", u)

        generated = millis()
        # pass new u to ROS node

        msg = MotorControl()
        msg.m1 = u[0]
        msg.m2 = u[1]
        msg.m3 = u[2]
        msg.m4 = u[3]

        #print("MSG: ", msg)

        #msg.m1 = 5000
        #msg.m2 = 5000
        #msg.m3 = 5000
        #msg.m4 = 5000
        #pub.publish(msg)

	# print for debugging / viewing timestamps to measure control latency and update frequ.
        #print "Received: ", received, "\nPrevious: ", x_prev, "\nGenerated: ", generated, "\nU: ", u, "\n\n\n"
        print "Time elapsed: ", (generated-received)
        global totalTimes
        global totalRuns
        totalTimes += (generated-received)
        totalRuns += 1
        print "Average = ", (totalTimes/totalRuns)
        print "Hz = ", (totalRuns / (millis() / 1000))
        rate.sleep()


if __name__ == '__main__':
  #try:
    nodecontroller()
  #except rospy.ROSInterruptExecption: pass

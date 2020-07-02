#!/usr/bin/env python
import sys
import rospy
from jaco_fk.srv import *

# This is the client's fuction receieving these (six) joint requests from command line then sending them to the server (fk_check_server.py) service
def fk_check_client(joint_1_req, joint_2_req, joint_3_req, joint_4_req, joint_5_req, joint_6_req):
    rospy.wait_for_service('fk_check')
    try:
        fk_check = rospy.ServiceProxy('fk_check', FKCheck)
        resp1 = fk_check(joint_1_req, joint_2_req, joint_3_req, joint_4_req, joint_5_req, joint_6_req) # IN RADIANS
        print resp1
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e

def usage():
    return "%s [joint_1_req joint_2_req joint_3_req joint_4_req joint_5_req joint_6_req]"%sys.argv[0]

if __name__ == "__main__":
    if len(sys.argv) == 7:
        joint_1_req = float(sys.argv[1])
        joint_2_req = float(sys.argv[2])
        joint_3_req = float(sys.argv[3])
        joint_4_req = float(sys.argv[4])
        joint_5_req = float(sys.argv[5])
        joint_6_req = float(sys.argv[6])
    else:
        print usage()
        sys.exit(1)
    print "Requesting joint angles [%s  %s  %s  %s  %s  %s]"%(joint_1_req, joint_2_req, joint_3_req, joint_4_req, joint_5_req, joint_6_req)
    fk_check_client(joint_1_req, joint_2_req, joint_3_req, joint_4_req, joint_5_req, joint_6_req)

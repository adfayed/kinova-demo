#!/usr/bin/env python
import rospy
import tf2_ros
import geometry_msgs.msg
import roslib; roslib.load_manifest('urdfdom_py');
import getpass
import fcl
from jaco_fk.srv import *
from jaco_fk import Manager
from tf.transformations import quaternion_from_euler
from urdf_parser_py.urdf import URDF

# Class for joint attr
class Joint:
    def __init__(self, name, parent_frame_name, child_frame_name, dynamic = False):
        self.dynamic = dynamic
        self.parent_frame_name = parent_frame_name
        self.child_frame_name = child_frame_name
        self.static_br = tf2_ros.StaticTransformBroadcaster()
        self.msg = geometry_msgs.msg.Pose()
        self.msg.position.x = robot_urdf.joint_map[name].origin.xyz[0]
        self.msg.position.y = robot_urdf.joint_map[name].origin.xyz[1]
        self.msg.position.z = robot_urdf.joint_map[name].origin.xyz[2]
        self.msg.orientation = geometry_msgs.msg.Quaternion(*quaternion_from_euler(robot_urdf.joint_map[name].origin.rpy[0],
            robot_urdf.joint_map[name].origin.rpy[1],robot_urdf.joint_map[name].origin.rpy[2]))
        self.limit = (robot_urdf.joint_map[name].limit.lower, robot_urdf.joint_map[name].limit.upper)
        if dynamic:
            self.br = tf2_ros.TransformBroadcaster()
            self.msg_rot = geometry_msgs.msg.Pose()
            self.msg_rot.position.x = 0
            self.msg_rot.position.y = 0
            self.msg_rot.position.z = 0
            self.msg_rot.orientation = geometry_msgs.msg.Quaternion(0, 0, 0, 1)

# Class for the whole robot's attr
class Robot:
    def __init__(self):
        self.joint_base = Joint("j2n6s300_joint_base", "world", "jaco_fk/Joint_Base")
        self.joint_1 = Joint("j2n6s300_joint_1", "jaco_fk/Joint_Base", "jaco_fk/Joint_1", True)
        self.joint_2 = Joint("j2n6s300_joint_2", "jaco_fk/Joint_1_rot", "jaco_fk/Joint_2", True)
        self.joint_3 = Joint("j2n6s300_joint_3", "jaco_fk/Joint_2_rot", "jaco_fk/Joint_3", True)
        self.joint_4 = Joint("j2n6s300_joint_4", "jaco_fk/Joint_3_rot", "jaco_fk/Joint_4", True)
        self.joint_5 = Joint("j2n6s300_joint_5", "jaco_fk/Joint_4_rot", "jaco_fk/Joint_5", True)
        self.joint_6 = Joint("j2n6s300_joint_6", "jaco_fk/Joint_5_rot", "jaco_fk/Joint_6", True)
        self.joint_e = Joint("j2n6s300_joint_end_effector", "jaco_fk/Joint_6_rot", "jaco_fk/Joint_End_Effector", True)
        self.joint_f1 = Joint("j2n6s300_joint_finger_1", "jaco_fk/Joint_6_rot", "jaco_fk/Joint_Finger_1")
        self.joint_f2 = Joint("j2n6s300_joint_finger_2", "jaco_fk/Joint_6_rot", "jaco_fk/Joint_Finger_2")
        self.joint_f3 = Joint("j2n6s300_joint_finger_3", "jaco_fk/Joint_6_rot", "jaco_fk/Joint_Finger_3")
        self.joint_ft1 = Joint("j2n6s300_joint_finger_tip_1", "jaco_fk/Joint_Finger_1", "jaco_fk/Joint_Finger_Tip_1")
        self.joint_ft2 = Joint("j2n6s300_joint_finger_tip_2", "jaco_fk/Joint_Finger_2", "jaco_fk/Joint_Finger_Tip_2")
        self.joint_ft3 = Joint("j2n6s300_joint_finger_tip_3", "jaco_fk/Joint_Finger_3", "jaco_fk/Joint_Finger_Tip_3")
        self.joint_map = [self.joint_base, self.joint_1, self.joint_2, self.joint_3, self.joint_4, self.joint_5, self.joint_6, 
                            self.joint_e, self.joint_f1, self.joint_f2, self.joint_f3, self.joint_ft1, self.joint_ft2, self.joint_ft3]

# This gets called from the client (fk_check_client.py) service giving it the requested joint angles that were given to the client @ command line on startup.
def handle_fk_check(req):
    print "Requested joint angles are [%s  %s  %s  %s  %s %s]"%(req.joint_1_req, req.joint_2_req, req.joint_3_req, req.joint_4_req, req.joint_5_req, req.joint_6_req)  
    in_Collision = update_pose(req)
    return FKCheckResponse(in_Collision)

# This function updates the pose, calls fcl_check.py to check for collision using the FCL Library and returns the success boolean printed @ command line
def update_pose(msg):
    joint_req_map = [msg.joint_1_req, msg.joint_2_req, msg.joint_3_req, msg.joint_4_req, msg.joint_5_req, msg.joint_6_req]
    limit_breached = False

    for i in range(len(joint_req_map)):
        if not(robot.joint_map[i+1].limit[0] <= joint_req_map[i] <= robot.joint_map[i+1].limit[1]):
            limit_breached = True
            break
    if limit_breached:
        print "This Kinova Robot's (j2n6s300) workspace does not permit the requested joint angles."
        in_Collision = True 
    else:
        for j in range(len(joint_req_map)):
            robot.joint_map[j+1].msg_rot.orientation = geometry_msgs.msg.Quaternion(*quaternion_from_euler(0, 0, joint_req_map[j]))
            # TF Broadcasts need to be updated before we look them up
            update_broadcasts(robot.joint_map[j+1])

        tf_array = [lookupTrans("jaco_fk/Joint_1_rot","jaco_fk/Joint_Base"),lookupTrans("jaco_fk/Joint_2_rot","jaco_fk/Joint_Base"),lookupTrans("jaco_fk/Joint_3_rot", "jaco_fk/Joint_Base"),
        lookupTrans("jaco_fk/Joint_4_rot", "jaco_fk/Joint_Base"),lookupTrans("jaco_fk/Joint_5_rot", "jaco_fk/Joint_Base"), lookupTrans("jaco_fk/Joint_6_rot", "jaco_fk/Joint_Base"),
         lookupTrans("jaco_fk/Joint_Finger_1", "jaco_fk/Joint_Base"), lookupTrans("jaco_fk/Joint_Finger_2", "jaco_fk/Joint_Base"), lookupTrans("jaco_fk/Joint_Finger_3", "jaco_fk/Joint_Base"),
          lookupTrans("jaco_fk/Joint_Finger_Tip_1", "jaco_fk/Joint_Base"), lookupTrans("jaco_fk/Joint_Finger_Tip_2", "jaco_fk/Joint_Base"), lookupTrans("jaco_fk/Joint_Finger_Tip_3", "jaco_fk/Joint_Base")]

        in_Collision = fcl_manager.check_collision(tf_array) # CHECK FOR COLLISION

    return in_Collision

# Function to lookup the trasfrom to build the transform array for the links to then send it to fcl_check.py
def lookupTrans(targetJoint = None, sourceJoint = None):
    if targetJoint is None or sourceJoint is None:
        print "Failed to locate frame. Parameter is \"None\""
    else:
        t = tfBuffer.lookup_transform(targetJoint, sourceJoint, rospy.Time())
        single_tf = fcl.Transform((t.transform.rotation.x, t.transform.rotation.y, t.transform.rotation.z, t.transform.rotation.w),
            [t.transform.translation.x, t.transform.translation.y, t.transform.translation.z])      

        return single_tf

# This is what gets called in the main while loop to continuosly broadcast the transforms to keep them alive.
# It handles if the joint is a dynamic one (one of the six requested angles) or if it is a static one (we do not intend to move it. Ex: Fingers)
def update_broadcasts(joint):
    static_t = geometry_msgs.msg.TransformStamped()
    static_t.header.stamp = rospy.Time.now()
    static_t.header.frame_id = joint.parent_frame_name
    static_t.child_frame_id = joint.child_frame_name
    static_t.transform.translation.x = joint.msg.position.x
    static_t.transform.translation.y = joint.msg.position.y
    static_t.transform.translation.z = joint.msg.position.z
    static_t.transform.rotation.x = joint.msg.orientation.x
    static_t.transform.rotation.y = joint.msg.orientation.y
    static_t.transform.rotation.z = joint.msg.orientation.z
    static_t.transform.rotation.w = joint.msg.orientation.w
    joint.static_br.sendTransform(static_t)
    if joint.dynamic:
        dynamic_t = geometry_msgs.msg.TransformStamped()
        dynamic_t.header.stamp = rospy.Time.now()
        dynamic_t.header.frame_id = joint.child_frame_name
        dynamic_t.child_frame_id = joint.child_frame_name + "_rot"
        dynamic_t.transform.translation.x = joint.msg_rot.position.x
        dynamic_t.transform.translation.y = joint.msg_rot.position.y
        dynamic_t.transform.translation.z = joint.msg_rot.position.z
        dynamic_t.transform.rotation.x = joint.msg_rot.orientation.x
        dynamic_t.transform.rotation.y = joint.msg_rot.orientation.y
        dynamic_t.transform.rotation.z = joint.msg_rot.orientation.z
        dynamic_t.transform.rotation.w = joint.msg_rot.orientation.w
        joint.br.sendTransform(dynamic_t)

def main():
    rospy.init_node('fk_check_server')
    rate = rospy.Rate(100.0)
    global robot                                        # Globalized since other functions need access to it
    global robot_urdf                                   # Globalized since other functions need access to it
    global tfBuffer                                     # Globalized since other functions need access to it
    global fcl_manager                                  # Globalized since other functions need access to it

    # To get transform from TF
    tfBuffer = tf2_ros.Buffer()
    listener = tf2_ros.TransformListener(tfBuffer)

    # Read username to get path to urdf for reading robot urdf
    username = getpass.getuser()
    robot_urdf = URDF.from_xml_file("/home/" + username +"/kinova-demo/src/jaco_fk/urdf/jaco2.urdf")    # Reads the urdf and gets all the neccessary data
    
    # Initialize FCL checker and robot object contating all joints
    fcl_manager = Manager()
    robot = Robot()
    s = rospy.Service('fk_check', FKCheck, handle_fk_check)
    
    while not rospy.is_shutdown():
        for joint in robot.joint_map:
            update_broadcasts(joint)                    # Update (rebroadcast) trasforms in TF to keep them alive
    
        rate.sleep()

if __name__ == '__main__':
    
    main()


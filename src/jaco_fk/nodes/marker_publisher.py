import rospy
import getpass
from std_msgs.msg import String
from urdf_parser_py.urdf import URDF
from visualization_msgs.msg import Marker, MarkerArray

def main():
    rospy.init_node('marker_publisher')
    pub = rospy.Publisher('jaco_fk_marker_array', MarkerArray, queue_size=10)
    rate = rospy.Rate(100.0)
    num_of_links = 13

# Dictinary for the links that we would like to visualize. It reads these TF Frames from TF so fk_check_server.py must be live for this to work in RVIZ
    link_dict = {
    0: ("world", "package://jaco_fk/meshes/base.dae"),
    1: ("jaco_fk/Joint_1_rot", "package://jaco_fk/meshes/shoulder.dae"),
    2: ("jaco_fk/Joint_2_rot", "package://jaco_fk/meshes/arm.dae"),
    3: ("jaco_fk/Joint_3_rot", "package://jaco_fk/meshes/forearm.dae"),
    4: ("jaco_fk/Joint_4_rot", "package://jaco_fk/meshes/wrist.dae"),
    5: ("jaco_fk/Joint_5_rot", "package://jaco_fk/meshes/wrist.dae"),
    6: ("jaco_fk/Joint_6_rot", "package://jaco_fk/meshes/hand_3finger.dae"),
    7: ("jaco_fk/Joint_Finger_1", "package://jaco_fk/meshes/finger_proximal.dae"),
    8: ("jaco_fk/Joint_Finger_2", "package://jaco_fk/meshes/finger_proximal.dae"),
    9: ("jaco_fk/Joint_Finger_3", "package://jaco_fk/meshes/finger_proximal.dae"),
    10: ("jaco_fk/Joint_Finger_Tip_1", "package://jaco_fk/meshes/finger_distal.dae"),
    11: ("jaco_fk/Joint_Finger_Tip_2", "package://jaco_fk/meshes/finger_distal.dae"),
    12: ("jaco_fk/Joint_Finger_Tip_3", "package://jaco_fk/meshes/finger_distal.dae")
    }
    marker_array = MarkerArray()

    for k, v in link_dict.items():
        marker = Marker()
        marker.header.frame_id = v[0]
        marker.header.stamp = rospy.Time(0)
        marker.id = k
        marker.ns = "jaco_fk"
        #marker.type = Marker.MESH_RESOURCE
        marker.type = Marker.CUBE
        marker.action = Marker.ADD
        marker.scale.x = 1
        marker.scale.y = 1
        marker.scale.z = 1
        marker.color.a = 1.0
        marker.color.r = 0.0
        marker.color.g = 0.0
        marker.color.b = 1.0
        marker.pose.orientation.w = 1.0
        marker.pose.position.x = 0
        marker.pose.position.y = 0
        marker.pose.position.z = 0
        marker.mesh_resource = v[1]
        marker_array.markers.append(marker)

    while not rospy.is_shutdown():

        for i in range(num_of_links):
            marker_temp = marker_array.markers.pop()
            marker_temp.header.stamp = rospy.Time(0)
            marker_array.markers.append(marker_temp)
        pub.publish(marker_array)

        rate.sleep()

if __name__ == '__main__':
    main()
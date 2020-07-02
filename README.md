# kinova-demo
Experimental repo for testing and staging lab code 

jaco-fk pkg is intended for Forward kinematics of Kinova Jaco2 Robot arm j2n6s300 configuration.

Installation Instructions:----------------------------
Make sure you have kinova-ros installed (preferabbly kinova-ros-desktop-full. This is what it was created and tested with)

git clone the repo
catkin build

Use-case instructions:--------------------------------

*Run "python fk_check_server.py" (Preferabbly with python 2.7)*

Now that the server is running it is waiting for a client to send it a 6 joint angle (radians) request to form the pose.
This pose is then going to be the pose that the robot is going to check for collision with itself.

*Run "python fk_check_client.py 0 1.5 1.5 1.5 0 0" the 6 (radian) angles given in the command-line are an example of how to run the client*

This should print the return collision result using Python-Binding of FCL Library on both console windows of the client and server.

*For visualization run "python marker_publisher.py" and add it using the by topic add in RVIZ. (Intuitively run "rosrun rviz rviz")* 

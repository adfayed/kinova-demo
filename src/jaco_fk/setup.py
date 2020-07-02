## ! DO NOT MANUALLY INVOKE THIS setup.py, USE CATKIN INSTEAD

from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup

# fetch values from package.xml
setup_args = generate_distutils_setup(
    packages=['jaco_fk'],
    package_dir={'': 'src'},
    requires=['std_msgs', 'rospy', 'tf2_ros', 'tf2', 'roscpp', 'message_generation']
)

setup(**setup_args)

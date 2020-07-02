execute_process(COMMAND "/home/afayed/kinova-demo/build/jaco_fk/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/afayed/kinova-demo/build/jaco_fk/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "jaco_fk: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(jaco_fk_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/afayed/kinova-demo/src/jaco_fk/srv/FKCheck.srv" NAME_WE)
add_custom_target(_jaco_fk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jaco_fk" "/home/afayed/kinova-demo/src/jaco_fk/srv/FKCheck.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(jaco_fk
  "/home/afayed/kinova-demo/src/jaco_fk/srv/FKCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_fk
)

### Generating Module File
_generate_module_cpp(jaco_fk
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_fk
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(jaco_fk_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(jaco_fk_generate_messages jaco_fk_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/afayed/kinova-demo/src/jaco_fk/srv/FKCheck.srv" NAME_WE)
add_dependencies(jaco_fk_generate_messages_cpp _jaco_fk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jaco_fk_gencpp)
add_dependencies(jaco_fk_gencpp jaco_fk_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jaco_fk_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(jaco_fk
  "/home/afayed/kinova-demo/src/jaco_fk/srv/FKCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jaco_fk
)

### Generating Module File
_generate_module_eus(jaco_fk
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jaco_fk
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(jaco_fk_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(jaco_fk_generate_messages jaco_fk_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/afayed/kinova-demo/src/jaco_fk/srv/FKCheck.srv" NAME_WE)
add_dependencies(jaco_fk_generate_messages_eus _jaco_fk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jaco_fk_geneus)
add_dependencies(jaco_fk_geneus jaco_fk_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jaco_fk_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(jaco_fk
  "/home/afayed/kinova-demo/src/jaco_fk/srv/FKCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_fk
)

### Generating Module File
_generate_module_lisp(jaco_fk
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_fk
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(jaco_fk_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(jaco_fk_generate_messages jaco_fk_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/afayed/kinova-demo/src/jaco_fk/srv/FKCheck.srv" NAME_WE)
add_dependencies(jaco_fk_generate_messages_lisp _jaco_fk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jaco_fk_genlisp)
add_dependencies(jaco_fk_genlisp jaco_fk_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jaco_fk_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(jaco_fk
  "/home/afayed/kinova-demo/src/jaco_fk/srv/FKCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jaco_fk
)

### Generating Module File
_generate_module_nodejs(jaco_fk
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jaco_fk
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(jaco_fk_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(jaco_fk_generate_messages jaco_fk_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/afayed/kinova-demo/src/jaco_fk/srv/FKCheck.srv" NAME_WE)
add_dependencies(jaco_fk_generate_messages_nodejs _jaco_fk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jaco_fk_gennodejs)
add_dependencies(jaco_fk_gennodejs jaco_fk_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jaco_fk_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(jaco_fk
  "/home/afayed/kinova-demo/src/jaco_fk/srv/FKCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_fk
)

### Generating Module File
_generate_module_py(jaco_fk
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_fk
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(jaco_fk_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(jaco_fk_generate_messages jaco_fk_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/afayed/kinova-demo/src/jaco_fk/srv/FKCheck.srv" NAME_WE)
add_dependencies(jaco_fk_generate_messages_py _jaco_fk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jaco_fk_genpy)
add_dependencies(jaco_fk_genpy jaco_fk_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jaco_fk_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_fk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_fk
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(jaco_fk_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(jaco_fk_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jaco_fk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jaco_fk
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(jaco_fk_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(jaco_fk_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_fk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_fk
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(jaco_fk_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(jaco_fk_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jaco_fk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jaco_fk
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(jaco_fk_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(jaco_fk_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_fk)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_fk\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_fk
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_fk
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_fk/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(jaco_fk_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(jaco_fk_generate_messages_py geometry_msgs_generate_messages_py)
endif()

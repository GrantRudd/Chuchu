# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "chuchu_onboard: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ichuchu_onboard:/home/grant/ros_ws/src/chuchu_onboard/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(chuchu_onboard_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/grant/ros_ws/src/chuchu_onboard/msg/Int16ArrayHeader.msg" NAME_WE)
add_custom_target(_chuchu_onboard_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "chuchu_onboard" "/home/grant/ros_ws/src/chuchu_onboard/msg/Int16ArrayHeader.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(chuchu_onboard
  "/home/grant/ros_ws/src/chuchu_onboard/msg/Int16ArrayHeader.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chuchu_onboard
)

### Generating Services

### Generating Module File
_generate_module_cpp(chuchu_onboard
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chuchu_onboard
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(chuchu_onboard_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(chuchu_onboard_generate_messages chuchu_onboard_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/grant/ros_ws/src/chuchu_onboard/msg/Int16ArrayHeader.msg" NAME_WE)
add_dependencies(chuchu_onboard_generate_messages_cpp _chuchu_onboard_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chuchu_onboard_gencpp)
add_dependencies(chuchu_onboard_gencpp chuchu_onboard_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chuchu_onboard_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(chuchu_onboard
  "/home/grant/ros_ws/src/chuchu_onboard/msg/Int16ArrayHeader.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chuchu_onboard
)

### Generating Services

### Generating Module File
_generate_module_lisp(chuchu_onboard
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chuchu_onboard
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(chuchu_onboard_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(chuchu_onboard_generate_messages chuchu_onboard_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/grant/ros_ws/src/chuchu_onboard/msg/Int16ArrayHeader.msg" NAME_WE)
add_dependencies(chuchu_onboard_generate_messages_lisp _chuchu_onboard_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chuchu_onboard_genlisp)
add_dependencies(chuchu_onboard_genlisp chuchu_onboard_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chuchu_onboard_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(chuchu_onboard
  "/home/grant/ros_ws/src/chuchu_onboard/msg/Int16ArrayHeader.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chuchu_onboard
)

### Generating Services

### Generating Module File
_generate_module_py(chuchu_onboard
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chuchu_onboard
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(chuchu_onboard_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(chuchu_onboard_generate_messages chuchu_onboard_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/grant/ros_ws/src/chuchu_onboard/msg/Int16ArrayHeader.msg" NAME_WE)
add_dependencies(chuchu_onboard_generate_messages_py _chuchu_onboard_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chuchu_onboard_genpy)
add_dependencies(chuchu_onboard_genpy chuchu_onboard_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chuchu_onboard_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chuchu_onboard)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chuchu_onboard
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(chuchu_onboard_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chuchu_onboard)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chuchu_onboard
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(chuchu_onboard_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chuchu_onboard)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chuchu_onboard\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chuchu_onboard
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(chuchu_onboard_generate_messages_py std_msgs_generate_messages_py)
endif()

cd /home/gaeun/PX4-Autopilot
DONT_RUN=1 make px4_sitl_default gazebo
#source ~/catkin_ws/devel/setup.bash    # (optional)
source Tools/setup_gazebo.bash $(pwd) $(pwd)/build/px4_sitl_default
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)/Tools/sitl_gazebo
export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:$(pwd)
export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:$(pwd)/Tools/sitl_gazebo/models
#roslaunch px4 posix_sitl.launch
roslaunch px4 mavros_posix_sitl.launch


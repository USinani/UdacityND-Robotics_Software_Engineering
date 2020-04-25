# Udacity Robotics Software Nanodegree - Home Serivce Robot project

repository: https://github.com/USinani/UdacityND-Robotics_Software_Engineering

The projects' goal is to program a home service robot that will autonomously map an environment and navigate to pickup and deliver objects.

-Build a simulated map using Gazebo building editor
-Build a map of the environment using gmapping and teleop.
-Use Adaptive Monte Carlo Localisation to detect the robot position within the known map.
-Use the ROS move_base library to plot a path to a target pose and navigate to it.
-Write a custom node to encompass the path planning and driving libraries, listening for goal poses.
-Write a custom node to publish goal poses for the robot, then compare these to the actual pose (odometry topic) to determine success

Further resources to refer using/building the packages can be found following ROS Wiki:
http://wiki.ros.org/Documentation

# Building ROS packages and Shell Scripts
Ensure to have updated the work environment when installing the ROS navigation stack and other dependencies.
To run the Home Service Robot, make sure to building the packages correctly and then run the desired functions via use of scripts.

$ cd ~/catkin_ws
$ source devel/setup.bash
$ catkin_make
$ launch.sh

# Simulation setup
To test simulate the environment/world and robot the user could run launch.sh script.
which can be found on the main directory and/or shell_scripts.

# Mapping
Download and build rospackages for the following
slam_gmapping
turtlebot
turtlebot_interactions
turtlebot_simulator

Package source ROS packages:
https://github.com/ros-perception/slam_gmapping
https://github.com/turtlebot/turtlebot
https://github.com/turtlebot/turtlebot_interactions
https://github.com/turtlebot/turtlebot_simulator

Create a map using SLAM by running test_slam scripts which will accordingly call roslaunch to simulating the environment/world.

# Localisation and Navigation Testing
By running shell script: test_navigation.sh the user will be able to navigate a 2D environment. Additionally, running pick_objects.sh will add the ability to assign goals to the robot navigating the environment. 
 
# Home Service Functions
To create virtual object with markers the user will have to run add_marker.sh script. The marker is expected to periodically appear and dissapear based on users preferences. 

Home Service Tasks can be simulated using home_services.sh script which will show and hide accordingly when at pickup zone and at drop off zone.





#!/bin/sh
xterm -e "launch turtlebot_gazebo turtlebot_world.launch world_file:=~/catkin_ws/src/world/my_world " &
sleep 5
xterm -e " roslaunch turtlebot_gazebo amcl_demo.launch map_file:=~/catkin_ws/src/world/mymap.yaml " &
sleep 5
xterm -e " roslaunch turtlebot_rviz_launchers view_navigation.launch " &

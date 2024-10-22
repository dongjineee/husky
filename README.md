husky
=====

Common ROS packages for the Clearpath Husky, useable for both simulation and
real robot operation.

 - husky_control : Control configuration
 - husky_description : Robot description (URDF)
 - husky_msgs : Message definitions
 - husky_navigation : Navigation configurations and demos

For Husky instructions and tutorials, please see [Robots/Husky](http://wiki.ros.org/Robots/Husky).

To create a custom Husky description or simulation, please fork [husky_customization](https://github.com/husky/husky_customization).

husky_desktop
=============

Desktop ROS packages for the Clearpath Husky, which may pull in graphical dependencies.

 - husky_viz : Visualization (rviz) configuration and bringup

For Husky instructions and tutorials, please see http://wiki.ros.org/Robots/Husky

husky_simulator
==============

Simulator ROS packages for the Clearpath Husky.

 - husky_gazebo : Gazebo plugin definitions and extensions to the robot URDF.

For Husky instructions and tutorials, please see http://wiki.ros.org/Robots/Husky

husky_exploration_map_quick_start
=============

```bash
export GAZEBO_MODEL_PATH=:{your_workspace_path}/husky_gazebo/worlds/models
roslaunch husky_gazebo husky_custom.launch
rosrun teleop_twist_keyboard teleop_twist_keyboard.py
```

husky_docker_run
=====
```bash
git clone https://github.com/dongjineee/husky.git
**create gazebo_maps_folder**
cd husky/docker/
docker compose -f docker-compose-gui-nvidia.yaml build  
docker compose -f docker-compose-gui-nvidia.yaml up -d  
docker compose -f docker-compose-gui-nvidia.yaml exec sim /bin/bash  

##firtst build
cd src/husky/setup
source first_run.sh

##run maps
roslaunch husky_gazebo husky_playpen.launch
roslaunch husky_gazebo husky_moon.launch
roslaunch husky_gazebo husky_lake.launch
```

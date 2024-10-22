#!/bin/bash

echo "Running catkin_make..."
cd ~/sim && catkin_make

echo "Adding GAZEBO_MODEL_PATH to .bashrc..."
echo 'export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH::/root/sim/src/husky_sim/husky_gazebo/gazebo_maps/moon:/root/sim/src/husky_sim/husky_gazebo/gazebo_maps/travel_1' >> ~/.bashrc
source ~/.bashrc

echo "Sourcing setup.bash..."
source devel/setup.bash

echo "Setup ready!"

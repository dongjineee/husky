#####################
# Base image #
#####################
FROM dongjineee/cuda_12_1_0-20_04-noetic:01 as base

# Labels
LABEL maintainer="dongjincho"
LABEL contact="d22g66@naver.com"
LABEL description="husky_sim"

ARG ROS_VERSION="noetic"

# Disable dialog frontend
ARG DEBIAN_FRONTEND=noninteractive

# Select shell
SHELL ["/bin/bash", "-c"]

# Install dependency ros_sim_pkg
RUN apt update && apt install -y \
    ros-noetic-ros-controllers \
    ros-noetic-fath-pivot-mount-description \
    ros-noetic-flir-camera-description \
    ros-noetic-velodyne-description \
    ros-noetic-realsense2-description \
    ros-noetic-lms1xx \
    ros-noetic-robot-localization \
    ros-noetic-interactive-marker-twist-server \
    ros-noetic-twist-mux \
    ros-noetic-teleop-twist-keyboard \
    ros-noetic-teleop-twist-joy \
    ros-noetic-rviz-imu-plugin \
    ros-noetic-gmapping \
    python3-catkin-tools && \
    apt clean && rm -rf /var/lib/apt/lists/*

# Create sim_pkg
RUN mkdir -p /root/sim/src && \
    cd /root/sim/src && \
    git clone https://github.com/lmark1/velodyne_simulator.git && \
    git clone https://github.com/tu-darmstadt-ros-pkg/hector_gazebo.git && \
    source /opt/ros/noetic/setup.bash

# Define the dev stage for Docker Compose
FROM base as dev

# Set working directory
WORKDIR /root/sim


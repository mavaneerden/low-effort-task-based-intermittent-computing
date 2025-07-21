FROM ubuntu:22.04

ARG USER_ID=1000
ARG GROUP_ID=1000

ARG DEBIAN_FRONTEND=noninteractive

# RUN perl -pe "s/http/https/g" /etc/apt/sources.list > /etc/apt/sources.list

# Install dependencies
RUN apt-get update && apt-get install -y build-essential git
# For building MSP430-GCC
RUN apt-get install -y wget texinfo python2.7-dev bison flex
RUN apt-get install -y cmake
RUN apt-get install -y clang-format
# For building and using mspdebug
RUN apt-get install -y libusb-1.0-0-dev libudev-dev autoconf libtool unzip pkg-config curl sudo libreadline-dev libusb-dev libboost1.74-all-dev

# Create a new user
RUN addgroup --gid $GROUP_ID user

# Make the user able to do sudo without a password
RUN adduser --uid $USER_ID --gid $GROUP_ID --disabled-password --gecos '' user

#  Add new user docker to sudo group
RUN adduser user sudo

# Ensure sudo group users are not
# asked for a password when using
# sudo command by ammending sudoers file
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Remove the sudo messasge
RUN touch /home/user/.sudo_as_admin_successful

# Change the working directory
WORKDIR /home/user

# Change the user
USER user

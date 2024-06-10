#!/bin/bash

# Yocto needs a locale set to en_US.UTF-8. Otherwise lots of errors will appear
sudo locale-gen en_US.UTF-8

# Update package list
sudo apt-get update
sudo apt-get upgrade -y

# Install packages required for builds and host packages
sudo apt-get -f -y install \
    git build-essential diffstat texinfo gawk chrpath socat doxygen \
    dos2unix python3 bison flex libssl-dev u-boot-tools mono-devel \
    mono-complete curl python3-distutils repo pseudo python3-sphinx \
    g++-multilib libc6-dev-i386 jq git-lfs pigz zstd liblz4-tool \
    cpio file zstd lz4 xinetd tftpd nfs-kernel-server minicom \
    build-essential libncurses5-dev autoconf automake dos2unix \
    screen lrzsz lzop u-boot-tools

cd poky

# Source environment tools
source oe-init-build-env

# Everything's good. Need to configure the rest manually based on the needs.

printf "\n\nPackages and dependecies installed successfully.\n"
printf "Don't forget to set up the bblayers.conf file and local.conf files on poky/build. Have fun!\n"
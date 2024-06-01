#!/bin/bash

sudo locale-gen en_US.UTF-8

# Update package list
sudo apt-get update
sudo apt-get upgrade -y

# Install packages required for builds
sudo apt-get -f -y install \
    git build-essential diffstat texinfo gawk chrpath socat doxygen \
    dos2unix python3 bison flex libssl-dev u-boot-tools mono-devel \
    mono-complete curl python3-distutils repo pseudo python3-sphinx \
    g++-multilib libc6-dev-i386 jq git-lfs pigz zstd liblz4-tool \
    cpio file zstd lz4
# Install host packages
sudo apt-get install xinetd tftpd nfs-kernel-server minicom build-essential libncurses5-dev autoconf automake dos2unix screen lrzsz lzop u-boot-tools



git clone https://git.yoctoproject.org/poky
cd poky/
git checkout -t origin/kirkstone -b helios-kirkstone
git pull

git clone https://git.yoctoproject.org/meta-arm
cd meta-arm/
git checkout -t origin/kirkstone -b helios-kirkstone
git pull
cd ..


git clone https://github.com/openembedded/meta-openembedded.git
cd meta-openembedded/
git checkout -t origin/kirkstone -b helios-kirkstone
git pull
cd ..


git clone https://github.com/yaxsomo/meta-helios-splashscreen.git
cd meta-helios-splashscreen/
git pull
cd ..

source oe-init-build-env

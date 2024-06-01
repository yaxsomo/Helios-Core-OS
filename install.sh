#!/bin/bash

# Define accepted Yocto releases
ACCEPTED_RELEASES=("scarthgap" "kirkstone" "dunfell" "nanbield" "mickledore" "langdale" "honister")

# Check if Yocto release is provided as an argument and is valid
if [ $# -eq 0 ]; then
    echo "Please specify a Yocto release as an argument. Accepted releases are:"
    for release in "${ACCEPTED_RELEASES[@]}"; do
        echo " - $release"
    done
    exit 1
elif ! [[ " ${ACCEPTED_RELEASES[@]} " =~ " $1 " ]]; then
    echo "Invalid Yocto release. Accepted releases are:"
    for release in "${ACCEPTED_RELEASES[@]}"; do
        echo " - $release"
    done
    exit 1
fi

YOCTO_RELEASE="$1"

# Function to setup layers
setup_layer() {
    git clone $1
    cd $(basename $1)
    git checkout -t origin/$YOCTO_RELEASE -b helios-$YOCTO_RELEASE
    git pull
}

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

# Layers Setup
setup_layer https://git.yoctoproject.org/poky
setup_layer https://git.yoctoproject.org/meta-arm
cd ..
setup_layer https://github.com/openembedded/meta-openembedded
cd ..
setup_layer https://github.com/yaxsomo/meta-helios-splashscreen
cd ..

# Source environment tools
source oe-init-build-env

# Everything's good. Need to configure the rest manually based on the needs.
echo "Base layers & Environment set up successfully. Project branch set to $YOCTO_RELEASE version."
echo "Don't forget to set up the bblayers.conf file and local.conf file on poky/build. Have fun!"

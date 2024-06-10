#!/bin/bash

# Define accepted Yocto releases
ACCEPTED_RELEASES=("scarthgap" "kirkstone")

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

git config submodule.recurse true
git checkout $YOCTO_RELEASE
git submodule foreach -q --recursive 'branch="$(git config -f $toplevel/.gitmodules submodule.$name.branch)"; git switch $branch'



# Everything's good. Need to configure the rest manually based on the needs.
printf "\n\nEnvironment setted up successfully. Project branch set to $YOCTO_RELEASE version.\n"
printf "Don't forget to install the dependencies with ./install_dependencies.sh.\n"
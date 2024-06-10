<p align="center">
  <img src="https://github.com/yaxsomo/Helios-Core-OS/assets/71334330/b9eb0759-d8c2-428e-a764-d8835868768b" alt="meta-helios-splashscreen logo">
</p>


#

This repository is dedicated to the Helios Single Board Computer Operating System development as well as it's emulation.

## Introduction

Helios Core OS is the customized Operating System for the XXX board based on Yocto. It was customized to be compatible with the AM68x microprocessor series from Texas Instruments.

## Features

- Emulate the OS using QEMU
- Customize image settings

## Tech

Helios Core OS is based on Yocto and emulated using QEMU.
- [Yocto] - Create custom Linux-based systems regardless of the hardware architecture
- [QEMU] - A generic and open source machine emulator and virtualizer

## Installing

To run the emulation, you will need to run the install_dependencies.sh script.
This script will install all dependencies for the project and build the image for the emulator.

First, clone the repository :
```sh
git clone --recurse-submodules https://github.com/yaxsomo/Helios-Core-OS
```
With this command, the default branch will be `kirkstone`. If you want to choose which brach to clone, use the command below instead : 

```sh
git clone -b [branch_name] --recurse-submodules https://github.com/yaxsomo/Helios-Core-OS
```
Available branches (yocto releases) : 

   - `scarthgap` 
   - `kirkstone` 

> Note: The cloning process might take some time.

Installing the dependencies:
```sh
sudo chmod +x install_dependencies.sh
./install_dependencies.sh
```
Setting up the environment branches for every submodule (recursive) :
```sh
sudo chmod +x normalize_to_branch.sh
./normalize_to_branch.sh [branch_name]
```
> Note: Those commands have to be executed at the repository's root directory.

### Building for emulation

For now, available build options are the following ones (proven to work successfully) : 
- Base build options :
   - core-image-minimal
   - core-image-full-cmdline
   - meta-toolchain
   - meta-ide-support
- Graphical User Interface build options :
   - bitbake core-image-minimal-xfce
   - core-image-sato
   - core-image-weston

Usage :
```bash
bitbake [build-option]
```

### Building for the board 

TBA

## The team

To ask for any information, feel free to contact any of the member of the team.
| Name | Contact  |
| ------ | ------ |
| DEHHANI Yassine | yassine.dehhani@ynov.com |
| BAILEY Emile | emile.bailey@ynov.com |

## Development

Stay up to date with the development by visiting the [Notion] page for the project. This page contains everything about the roadmap and project management. 

## License

MIT

**Free Software, Hell Yeah!**

   [QEMU]: <https://www.qemu.org/>
   [Yocto]: <https://www.yoctoproject.org/>
   [AM68 SDK]: <https://www.ti.com/tool/PROCESSOR-SDK-AM68>
   [Notion]: <https://www.notion.so/Nyx-Core-SBC-Project-management-a56bd7ae7e154de29fd0a4aed3680350>



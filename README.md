<p align="center">
  <img src="https://github.com/yaxsomo/Helios-Core-OS/assets/71334330/f5d40257-9991-4e57-8e69-838fdfcbfa33" alt="meta-helios-splashscreen logo">
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
- [AM68 SDK] - The SDK provided by Texas Instrument compatible for the AM68x Microprocessor Series. 

## Installing

To run the emulation, you will need to run the install_dependencies.sh script.
This script will install all dependencies for the project and build the image for the emulator.

First, clone the repository :
```sh
git clone https://github.com/yaxsomo/Helios-Core-OS
```
> Note: The installation might take some time.

Installing the dependencies & setting up the environment layers :
```sh
cd Helios-Core-OS
sudo chmod +x install.sh
./install.sh [yocto_release]
```
Available arguments (yocto releases) : 

   - `scarthgap` 
   - `nanbield` 
   - `langdale` 
   - `kirkstone` 
   - `dunfell` 
   - `mickledore`

### Building for emulation

TBA

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



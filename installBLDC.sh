#!/bin/bash
# Build the Qt gui control for the custom VESC BLDC controller
# Note that this is different from the actual VESC firmware itself, though
# compiled versions of the firmware are contained within the bldc-tool source tree
# Also grabs the VESC configuration files from the mit-racecar hardware repository
cd $ROOT
echo "Installing BLDC Tool prerequisites"
sudo apt-get install qtcreator qt-sdk libudev-dev libqt5serialport5-dev 
echo "Fetching bldc-tool source code"
git clone https://github.com/vedderb/bldc-tool
cd bldc-tool
echo "Building bldc-tool from source"
qmake -qt=qt5
make clean && make
cd $ROOT
git clone https://github.com/mit-racecar/hardware.git
echo "You should now be able to run BLDC_Tool from the ~/bldc-tool directory"
echo "The VESC firmware is in ~/bldc-tool/firmwares"
echo "The RACECAR VESC configuration files are in ~/hardware/vesc"



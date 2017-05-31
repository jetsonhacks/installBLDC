# installBLDC
Install the VESC BLDC tool on the Jetson Development Kit
This script will install the bldc-tool for the VESC, Vedder Electronic Speed Controller. This is sometimes referred to as BLDC controller. The VESC is used in the Jetson RACECAR project.

The VESC is an open source hardware and software brushless motor controller.

Running the install script builds the bldc-tool, a Qt Gui to interact with the BLDC controller.
Before building the tool, the required prerequisites are installed. Next the bldc-tool is compiled from source.

Note that this is the tool that can configure and load firmware on the VESC, not the actual firmware that runs the on the VESC. The firmware is in a separate repository. See: https://github.com/vedderb/bldc

Compiled versions of the firmware are contained in the bldc-tool repository in the 'firmwares' directory.

The script also downloads VESC configuration files used on the MIT RACECAR. These configurations are located in ~/hardware/vesc

The firmware controls the VESC, the VESC configuration file configures the VESC to interface with the motor being used.




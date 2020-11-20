# Arduino Makefile. Refer to https://github.com/sudar/Arduino-Makefile
#
# This file is for use on an Ubuntu 20.04 system using the stock
# arduino-core and arduino-mk packages.

# regular uno with '328p and 115200 baud
#BOARD_TAG    = uno

# nano board with '328p and old bootloader (57600 baud)
#BOARD_TAG   = nano
#BOARD_SUB   = atmega328old

# The BatteryBoard v1.0 runs at 8MHz and the bootloader uses the
# somewhat unusual baud rate of 38400
BOARD_TAG = pro
BOARD_SUB = 8MHzatmega328
AVRDUDE_ARD_BAUDRATE = 38400

# This is where my additional Arduino libraries are located.
# Other popular locations on Linux systems are:
# - $(HOME)/.arduino15
# - $(HOME)/Sketchbook
# - $(HOME)/sketchbook
ARDUINO_SKETCHBOOK   = $(HOME)/Arduino

# Tonuino requires a more up-to-date version of the EEPROM library than the
# version delivered with arduino-core 1.0.5 on Ubuntu 20.04. So I installed a
# more up-to-date version of Arduino in /opt. Another alternative would be
# to install only the EEPROM library in the Arduino Sketchbook folder.
ARDUINO_DIR=/opt/arduino-1.8.9/

# This is the standard location when installed from the package arduino-mk
include /usr/share/arduino/Arduino.mk

# PyCubed-Mini Bootloader
## Setup
```
git clone https://github.com/adafruit/uf2-samdx1.git
cd uf2-samdx1
```
## Build
```
cp -r <path/to/bootloader_config> ./boards/pycubedmini/
make BOARD=pycubedmini
```
Built .bin and .uf2 files can be found in `./build/pycubedmini/`
## Flash
Refer to this Adafruit article to flash the bootloader [https://learn.adafruit.com/how-to-program-samd-bootloaders]()

This process (usually) needs to be performed only once for a fresh ATSAMD51 chip.

# PyCubed-Mini Firmware

Refer to this adafruit article to install prerequisites
[https://learn.adafruit.com/building-circuitpython]()
## Setup
#### Fetch the Code to Build
```
git clone https://github.com/adafruit/circuitpython.git
cd circuitpython
```
#### Install Required Python Packages
```
# Install pip if it is not already installed (Linux only)
sudo apt install python3-pip

# Install needed Python packages from pypi.org.
pip3 install --upgrade -r requirements-dev.txt
pip3 install --upgrade -r requirements-doc.txt
```
#### Fetch Submodules
```
# Build using the CircuitPython v8 release
git checkout 8.2.10

# Fetch the submodules needed for the atmel-samd port
cd ports/atmel-samd
make fetch-port-submodules
```
#### Build mpy-cross
```
cd ../..
make -C mpy-cross
```
## Build
```
cd ports/atmel-samd
cp -r <path/to/firmware_config> ./boards/pycubedmini/
make BOARD=pycubedmini
```
Built UF2 files can be found under `./build-pycubedmini/firmware.uf2`
## Flash
Connect the mainboard to your PC via a USB cable. Double-tap the reset button to enter bootloader mode. In this mode, the mainboard mounts as a USB device named "PYCUBEDBOOT". Copy firmware.uf2 into PYCUBEDBOOT to install/update the CircuitPython firmware.

This process (usually) needs to be performed only once for a fresh ATSAMD51 chip.

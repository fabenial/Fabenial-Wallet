# Fabenial GUI

## How to build binaries from source code

### Windows
To build the gui you must have built fabenial core, so please do all steps from [here](https://github.com/fabenial/FabenialCoin#building-on-windows) before proceed. Install [QtCreator](https://www.qt.io/download-thank-you?os=windows), open the project file fabenial_gui/src/fabenial-gui.pro in QtCreator and build it using MSVS kit (you must have MSVS installed already to build fabenial core).

### MacOS

To build the gui you must have built fabenial core, so please do all steps from [here](https://github.com/fabenial/FabenialCoin#building-on-mac-osx) before proceed. Install [QtCreator](https://www.qt.io/download-thank-you?os=macos), open the project file fabenial_gui/src/fabenial-gui.pro in QtCreator and build it using clang kit (you must have XCode installed already to build fabenial core).

### Linux
```
# To install all required packages on Ubuntu use the following command:
$ sudo apt install qt5-qmake qtbase5-dev qtbase5-dev-tools

$ git clone https://github.com/fabenial/FabenialCoin.git fabenial_core
$ cd fabenial_core
$ mkdir -p build
$ cd build
$ cmake ..
$ make -j4
$ cd ../..
$ git clone https://github.com/fabenial/FabenialCoin-GUI.git fabenial_gui
$ cd fabenial_gui
$ mkdir -p build
$ cd build
$ cmake ..
$ make -j4
```
Alternative way:
```
# Install QtCreator:
$ sudo apt install qtcreator

$ git clone https://github.com/fabenial/FabenialCoin.git fabenial_core
$ cd fabenial_core
$ mkdir -p build
$ cd build
$ cmake ..
$ make -j4
$ cd ../..
$ git clone https://github.com/fabenial/FabenialCoin-GUI.git fabenial_gui
```
Now open the project file fabenial_gui/src/febenial-gui.pro in QtCreator and build it.

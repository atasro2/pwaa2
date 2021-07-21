# Gyakuten Saiban 2 (Japan)

This is a disassembly of Gyakuten Saiban 2 (Japan)

It builds the following ROM:
* pwaa2.gba `sha1: F7A156DBED52D3EDB8104112AE40E6E2AACA57F9`

### Setting up the repository

* it is advised to use WSL for making this repository on Windows 10 but if you use Win 8.1 or older then i can't help unless we get a proper tutorial for this.  

* **THIS README ASSUMES YOU HAVE EXPERIENCE WITH VARIOUS OTHER GBA DECOMPILATION REPOSITORIES AND A LINUX TERMINAL** 

* Clone this repository and go into the root folder of it.

* Then compile agbcc using the following command:
```
git clone https://github.com/luckytyphlosion/agbcc -b new_layout_with_libs
cd ./agbcc
make
make install prefix=../
make install-sdk prefix=../
```
* Compile the tools by running `make tools`

* You can then build pwaa2 using `make` in your linux/wsl terminal.

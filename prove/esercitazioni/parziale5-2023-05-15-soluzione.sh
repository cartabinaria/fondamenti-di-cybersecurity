#! /usr/bin/bash

sudo apt update
sudo apt install default-jre default-jdk

./ghidraRun

# In FUN_004011f6, clicco 500000 nel decompilato. Nell'esadecimale, sostituisco
# 0x7a120 con 0x0.

chmod u+x fast_printer.file
./fast_printer.file

# tim3_flie5_WiTh_s0m3_heLp`

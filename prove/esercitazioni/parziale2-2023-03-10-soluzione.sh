#!/usr/bin/bash

# Esercizio 1

sudo apt install rainbowcrack
sudo rtgen md5 loweralpha 1 7 0 1000 100000 0
sudo rtsort /usr/share/rainbowcrack
rcrack /usr/share/rainbowcrack -h 6e6bc4e49dd477ebc98ef4046c067b5f
# ciao

# Esercizio 2

sudo rtgen md5 loweralpha 6 6 0 10000 100000 0
sudo rtsort /usr/share/rainbowcrack
rcrack /usr/share/rainbowcrack -h e879410167dfb8670e483f7f7a1843cf
# zlsbga

# Esercizio 3

sudo gunzip /usr/share/wordlists/rockyou.txt.gz
hashid bc107137cda7aa074de2664a88247f2dfa54546923049ec929869edd6bc648a0
man hashcat
hashcat -a 0 -m 1410 \
  bc107137cda7aa074de2664a88247f2dfa54546923049ec929869edd6bc648a0:dd1b1n5 \
  /usr/share/wordlists/rockyou.txt
# querty

## Esercizio 4

hashid 0e8ae09ae169926a26b031c18c01bafa
hashcat -a 0 -m 0 \
  -r /usr/share/hashcat/rules/InsidePro-PasswordsPro.rule \
  0e8ae09ae169926a26b031c18c01bafa \
  /usr/share/wordlists/rockyou.txt
# ILOVEME8320

## Esercizio 5

hashid c73fceaab80035a75ba3fd415ecb2735
hashcat -a 0 -m 0 \
  -r /usr/share/hashcat/rules/InsidePro-PasswordsPro.rule \
  c73fceaab80035a75ba3fd415ecb2735 \
  /usr/share/wordlists/rockyou.txt
# soccer23!

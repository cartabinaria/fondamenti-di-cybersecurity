#!/usr/bin/bash

cat Exercises.txt

# Esercizio 1

hashid a4716c0b21b3e11ab40cbcecd2f2783804ae8ce2
hashcat --help
hashcat -a 0 -m 100 \
  -r /usr/share/hashcat/rules/InsidePro-PasswordsPro.rule \
  a4716c0b21b3e11ab40cbcecd2f2783804ae8ce2 \
  /usr/share/wordlists/rockyou.txt
openssl aes-256-ecb -d -in file1.aes-256-ecb.txt \
  -out file1.aes-256-ecb-plain.txt
cat file1.aes-256-ecb-plain.txt

# Esercizio 2

hashid 2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b
hashcat --help
hashcat -a 0 -m 1400 \
  -r /usr/share/hashcat/rules/InsidePro-PasswordsPro.rule \
  bc107137cda7aa074de2664a88247f2dfa54546923049ec929869edd6bc648a0 \
  /usr/share/wordlists/rockyou.txt
openssl aes-256-cbc -d -in file2.aes-256-cbc.txt \
  -out file2.aes-256-cbc-plain.txt
cat file2.aes-256-cbc-plain.txt

hashid 6e1ec84e410f94b7b3999f1013a4e944
man hashcat
hashcat -a 0 -m 0 \
  -r /usr/share/hashcat/rules/InsidePro-PasswordsPro.rule \
  6e1ec84e410f94b7b3999f1013a4e944 \
  /usr/share/wordlists/rockyou.txt
openssl aes-256-cbc -d -in file2.aes-256-cbc-plain.txt \
  -out file2.aes-256-cbc-plain2.txt
cat file2.aes-256-cbc-plain2.txt

# Esercizio 3

openssl aes-256-ecb -d -in file3.indovinalo.txt \
  -out file3.indovinalo-plain.txt
cat file3.indovinalo-plain.txt

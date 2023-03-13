#!/bin/bash

## Part 1: overthewire.org

# Level 0 -> Level 1
cat readme

# Level 1 -> Level 2
cat ./-

# Level 2 -> Level 3
cat "spaces in this filename"

# Level 3 -> Level 4
ls -a inhere/
cat inhere/.hidden

# Level 4 -> Level 5
file ./*
cat ./-file07

# Level 5 -> Level 6
xargs file $(find -size 1033c ! -executable)
cat ./inhere/maybeinhere07/.file2

# Level 6 -> Level 7
find / -user bandit7 -group bandit6 -size 33c
cat /var/lib/dpkg/info/bandit7.password

# Level 7 -> Level 8
cat data.txt | grep millionth

# Level 9 -> Level 9
sort data.txt | uniq -c | sort -r | head -n 1 -

# Level 9 -> Level 10
cat data.txt | strings | grep ===

## Part 2: hidden services

# Flag: p4ssw0rd1

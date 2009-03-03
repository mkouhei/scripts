#!/bin/bash

clamscan *.zip
test 0 -ne $? && exit 1
for i in *.zip
do
  unzip $i
done

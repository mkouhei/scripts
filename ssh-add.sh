#!/bin/bash -e
read -p 'Enter passphrase:' -s pass
for i in $( (cd ~/.ssh;ls -1 id_* | grep -v .pub) )
do
expect << EOF
  spawn ssh-add $HOME/.ssh/${i}
  expect "Enter passphrase for $HOME/.ssh/${i}:"
  send "$pass\r"
  expect eof
EOF
done

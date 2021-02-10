#!/bin/bash
eval `ssh-agent -s`
ssh-add
while true;
echo 'Connecting'
do
  ssh -o StrictHostKeyChecking=no \
      -nNT -L *:${LOCAL_PORT}:${DESTINATION_SERVER}:${DESTINATION_PORT} \
      $SSH_USER@$SSH_BASTION_HOST;
  echo 'Reconnecting'
done
#!/bin/bash
eval `ssh-agent -s`
ssh-add
while true;
do
  ssh -nNT -L *:${LOCAL_PORT}:${REMOTE_SERVER}:${REMOTE_PORT} $SSH_USER@$SSH_BASTION_HOST;
  echo 'Reconnecting'
done
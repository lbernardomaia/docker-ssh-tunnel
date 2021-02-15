#!/bin/bash
echo 'Connecting'
ssh -o StrictHostKeyChecking=no \
    -o ServerAliveInterval=60 \
    -nNT -L *:${LOCAL_PORT}:${DESTINATION_SERVER}:${DESTINATION_PORT} \
    $SSH_USER@$SSH_BASTION_HOST;
## Docker SSH Tunnel

#### How to use

Example:
```
docker run -it --rm \
-e LOCAL_PORT=3306 \
-e REMOTE_SERVER=dababase.rds.amazonaws.com \
-e REMOTE_PORT=3306 \
-e SSH_USER=YOUR_USER \
-e SSH_BASTION_HOST=your-bastion.service.com \
-v ~/.ssh/id_rsa:/root/.ssh/id_rsa:ro  \
-p 3306:3306 ssh-tunnel
```
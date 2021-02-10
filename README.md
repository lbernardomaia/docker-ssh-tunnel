## Docker SSH Tunnel

This docker image provides a simple SSH tunnelling to 
connect to a remote server and keep the connection alive
while the image is running.

### How to use

####Mysql:
```
docker run -it --rm \
-e LOCAL_PORT=3306 \
-e DESTINATION_SERVER=dababase.rds.amazonaws.com \
-e DESTINATION_PORT=3306 \
-e SSH_USER=YOUR_USER \
-e SSH_BASTION_HOST=your.bastion.service.com \
-v ~/.ssh/id_rsa:/root/.ssh/id_rsa:ro  \
-p 3306:3306 ssh-tunnel
```

To connect : ```mysql --host=localhost --user=myname --password=password ```

####Others:

Other databases should work similarly, changing just the ports to use 
the database correspondent port. For example:
 - Postgresl: 5432
 - Mongodb: 27017

###Dockerhub:

https://hub.docker.com/repository/docker/lbernardomaia/ssh-tunnel

## Docker Commands

* ```docker build``` - Build a image from a Dockerfile
* ```docker run <image_name>``` - Runs the image in a container
* ```docker pull <image>``` - pulls the image from the docker registry
* ```docker images``` - shows all the images that we created before
* ```docker ps``` - lists all the current running docker containers

### Port Mapping
* ```docker run -d -p <host_port>:<container_port> image``` - port maps from given in port to out port

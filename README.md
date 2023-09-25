Hello Team, please find the commands for docker task as requested below.

# command to build the image locally as below. intuitive-image1 is the one which I gave for ease of pointing out.
docker build -t intuitive-image1 .

# To list the images run the command below.
docker image ls

# To create and start/run the container run the below command (remember to tag the container with specific name for ease..like mine is intuitive-container1).

docker run -d --name intuitive-container1 intuitive-image1

# To list running containers, run the following command.

docker ps

# To upload the command to dockerhub registry, run the command as below (I have tagged my image as latest for ease of latest image pushed)

docker push muzammilsayyed2606/intuitive-image1:latest

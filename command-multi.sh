!/bin/sh

echo "Credit: https://codefresh.io/docker-tutorial/create-docker-images-for-java/"

# This only when testing on local machine
# git clone https://github.com/gaganichake/docker-with-java-demos.git

cd docker-multi-stage-build-demo

# Build a docker image with <name>:<tag>
docker build -t gaganichake/docker-multi-stage-build-demo:1.0 .

# Stop the Container if it already running
docker stop JavaAppContainer

# Force remove the Container if still running
docker rm -f JavaAppContainer

# Run the Container
docker run -d -p 8080:8080 --name JavaAppContainer gaganichake/docker-multi-stage-build-demo:1.0

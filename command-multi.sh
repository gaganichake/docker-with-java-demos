!/bin/sh

echo "Credit: https://codefresh.io/docker-tutorial/create-docker-images-for-java/"

# git clone https://github.com/gaganichake/docker-with-java-demos.git

cd docker-multi-stage-build-demo

docker build -t gaganichake/docker-multi-stage-build-demo:1.0 .

docker run -d -p 8080:8080 --name JavaAppContainer gaganichake/docker-multi-stage-build-demo:1.0

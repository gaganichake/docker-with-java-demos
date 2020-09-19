!/bin/sh

echo "Credit: https://codefresh.io/docker-tutorial/create-docker-images-for-java/"

# git clone https://github.com/gaganichake/docker-with-java-demos.git

cd docker-package-only-build-demo

mvn clean package

docker build -t gaganichake/docker-package-only-build-demo:1.0 .

docker run -d -p 8080:8080 --name JavaAppContainer gaganichake/docker-package-only-build-demo:1.0
docker login -u rix1337 -p %DH_TOKEN%

set IMAGE_NAME=rix1337/docker-gphotos-sync

docker build -t %IMAGE_NAME%:latest .
docker push %IMAGE_NAME%

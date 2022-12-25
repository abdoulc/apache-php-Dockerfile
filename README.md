# Some useful commands
### build
* docker build --tag local/apache-php:7 .
### list images
* docker image ls
### run
*  docker container run -d -p 8080:80 --name apache-php7 local/apache-php:7

#!/bin/bash

v_git=$(git rev-parse --short HEAD)
echo $v_git

docker build -f __cicdcm__/build/Dockerfile.nginx -t cdemo-nginx:${v_git} .
docker build -f __cicdcm__/build/Dockerfile.php -t cdemo-php:${v_git} .

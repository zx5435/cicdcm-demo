default:
	cat Makefile

clean:
	docker c

deploy:
	docker stack deploy -c docker-compose.yml cdemo

down:
	docker stack rm cdemo

build: build-a build-b

build-a:
	echo 'html:a' > 1.html
	docker build -f __cicdcm__/build/Dockerfile.nginx -t zx5435/cdemo-nginx:a .
	docker build -f __cicdcm__/build/Dockerfile.php -t zx5435/cdemo-php:a .

build-b:
	echo 'html:b' > 1.html
	docker build -f __cicdcm__/build/Dockerfile.nginx -t zx5435/cdemo-nginx:b .
	docker build -f __cicdcm__/build/Dockerfile.php -t zx5435/cdemo-php:b .

push:
	docker push zx5435/cdemo-nginx:a
	docker push zx5435/cdemo-php:a
	docker push zx5435/cdemo-nginx:b
	docker push zx5435/cdemo-php:b

to-a:
	docker service update cdemo_php --image=cdemo-php:a --detach=true

to-b:
	docker service update cdemo_php --image=cdemo-php:b --detach=true

check:
	sh check.sh

watch:
	tail -f check.log

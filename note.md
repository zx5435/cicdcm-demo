


docker service update ma_php --image=m-admin-php:64dbd51 --detach=true \
	--update-parallelism=1 --update-delay=10s --update-order="start-first" --stop-grace-period=10s \
	--health-cmd="ps -ef | grep php-fpm | grep -v grep || exit 1" --health-interval=5s --health-timeout=20s


docker service update ma_php --image=m-admin-php:826e07e --detach=true  \
	--update-parallelism=1 --update-delay=10s --update-order="start-first" --stop-grace-period=10s \
	--health-cmd="ps -ef | grep php-fpm | grep -v grep || exit 1" --health-interval=5s --health-timeout=20s


docker service update ma_nginx --image=m-admin-nginx:64dbd51 --detach=true \
	--update-parallelism=1 --update-delay=10s --update-order="start-first" --stop-grace-period=10s \
	--health-cmd="curl -fs localhost/index.html || exit 1" --health-interval=5s --health-timeout=20s

docker service update ma_nginx --image=m-admin-nginx:826e07e --detach=true \
	--update-parallelism=1 --update-delay=10s --update-order="start-first" --stop-grace-period=10s \
	--health-cmd="curl -fs localhost/index.html || exit 1" --health-interval=5s --health-timeout=20s


docker service update --help

ps -ef | grep php-fpm | grep -v grep || exit 1











docker stack deploy -c docker-compose.yml cdemo


docker stack rm cdemo


docker container prune -f


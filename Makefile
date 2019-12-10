up: docker-up
init: docker-down-clear docker-pull docker-build docker-up bx-init

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down --remove-orphans

docker-down-clear:
    docker-compose down -v --remove-orphans

docker-pull:
	docker-compose pull

docker-build:
	docker-compose build

bx-init:
    bx-composer-install

bx-composer-install:
    docker-compose run --rm bx-php-cli composer install

cli:
	docker-compose run --rm bx-php-cli php bin/app.php
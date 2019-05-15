attach:
	docker-compose run --rm node /bin/sh

clean: stop
	docker-compose rm -f

logs:
	docker-compose logs -f

start:
	docker-compose up -d

stop:
	docker-compose stop

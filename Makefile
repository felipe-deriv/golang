build:
	docker compose build

install:
	docker compose up -d

clear:
	docker compose down --rmi local --remove-orphans

shell:
	docker compose exec -it golang /bin/sh

compile:
	docker compose exec golang go build main.go

run:
	docker compose exec golang go run main.go

exec:
	docker compose exec golang ./main

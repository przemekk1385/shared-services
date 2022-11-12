network-create:
	docker network create \
  --driver=bridge \
  --attachable \
    shared_services

network-rm:
	docker network rm shared_services

up:
	doppler run -- docker-compose up -d

down:
	doppler run -- docker-compose down

docker/network/create:
	docker network create \
  --driver=bridge \
  --attachable \
    shared_services

docker/network/rm:
	docker network rm shared_services

docker/stop:
	pwd \
| xargs basename \
| xargs -I {} echo "-qf name=^{}.+$$" \
| xargs docker ps \
| xargs -L1 docker stop

docker/up:
	doppler run -- docker-compose up -d

docker/down:
	doppler run -- docker-compose down

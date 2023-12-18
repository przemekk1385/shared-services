docker/network/create:
	docker network create \
  --driver=bridge \
  --attachable \
    shared_services

docker/network/rm:
	docker network rm shared_services

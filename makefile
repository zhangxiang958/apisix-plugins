setup: docker-down docker-up

docker-up:
	docker-compose -p docker-apisix up -d

docker-down:
	docker-compose -p docker-apisix down

# 本地是 mac 系统，使用 arm 架构
setup-arm: docker-down-arm docker-up-arm

docker-up-arm:
	docker-compose -p docker-apisix-arm -f docker-compose-arm.yml up -d

docker-down-arm:
	docker-compose -p docker-apisix-arm -f docker-compose-arm.yml down


build_docker:
	docker build -t zjkl/geek-navigation .

push_docker:
	docker login
	docker tag zkjl/geek-navigation newborn/geek-navigation
	docker push newborn/geek-navigation

help:
	@echo "make build_docker - 编译docker"
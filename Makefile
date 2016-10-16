build:
	docker-compose -f base.yml build

run: build
	docker-compose -f base.yml up

bash:
	docker run -ti -v $(PWD)/pages:/usr/src/app/pages -v $(PWD)/requests:/usr/src/app/requests rdaneel/phantomtest $@

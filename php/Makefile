.PHONY : install_and_run install run clean

full_run: install run

install:
	$(MAKE) clean
	docker build -t hackerrank-php .

run:
	./docker/restart-docker-image.sh hackerrank-php

clean:
	./docker/clean-docker-images.sh

build:
	docker build -t geraldojalves/fullcycle .
run:
	docker run --rm --name challenge-fullcycle geraldojalves/fullcycle
push:
	docker push geraldojalves/fullcycle
backup:
	docker build -t byscontrol/wheneverbackup:base base

postgres9.4:
	docker build -t byscontrol/wheneverbackup:postgres9.4 postgres/9.4
	
all: backup postgres9.4

docker-push:
	docker tag byscontrol/wheneverbackup:base registry.bys-control.com.ar/byscontrol/wheneverbackup:latest
	docker tag byscontrol/wheneverbackup:postgres9.4 registry.bys-control.com.ar/byscontrol/wheneverbackup:postgres9.4

	docker push registry.bys-control.com.ar/byscontrol/wheneverbackup:latest
	docker push registry.bys-control.com.ar/byscontrol/wheneverbackup:postgres9.4


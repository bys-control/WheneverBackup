backup:
	docker build -t byscontrol/wheneverbackup:base base

postgres9.4:
	docker build -t byscontrol/wheneverbackup:postgres9.4 postgres/9.4

postgres9.5:
	docker build -t byscontrol/wheneverbackup:postgres9.5 postgres/9.5
	
docker-push:
	docker push byscontrol/wheneverbackup:latest
	docker push byscontrol/wheneverbackup:postgres9.4
	docker push byscontrol/wheneverbackup:postgres9.5


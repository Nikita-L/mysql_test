all:
	docker-compose up -d
	docker-compose ps

show:
	docker-compose exec db bash -c "mysql -u root -ppassword db -e 'show tables;'"
	docker-compose exec db bash -c "mysql -u root -ppassword db -e 'select * from students;'"

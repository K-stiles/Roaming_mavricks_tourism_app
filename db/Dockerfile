FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD=root

COPY ./new_tourism_db_dump.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
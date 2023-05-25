FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD=root

COPY ./tourism_db_dump_has_Insert_data.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
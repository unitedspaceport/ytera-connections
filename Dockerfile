FROM mysql:5.7

COPY ./create.sql /docker-entrypoint-initdb.d/
COPY ./populate.sql /docker-entrypoint-initdb.d/

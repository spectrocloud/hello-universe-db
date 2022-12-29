FROM postgres:15.1-alpine
ENV POSTGRES_PASSWORD password
ENV POSTGRES_USER postgres
ENV POSTGRES_PORT 5432
ENV POSTGRES_DB counter
LABEL org.opencontainers.image.source="https://github.com/spectrocloud/hello-universe-db"
LABEL org.opencontainers.image.description "The database for the Hello Universe application"
COPY ./init.sql /docker-entrypoint-initdb.d/init.sql
EXPOSE 5432
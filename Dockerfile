ARG MARIADB_VERSION

FROM mariadb:${MARIADB_VERSION}

LABEL org.opencontainers.image.title 'MariaDB'
LABEL org.opencontainers.image.description 'MariaDB with performance schema disabled by default'
LABEL org.opencontainers.image.authors 'Richard Boldiš <richard@boldis.dev>'
LABEL org.opencontainers.image.source https://github.com/Richardds/docker-mariadb

# Replace the default configuration
RUN rm -rf /etc/mysql
COPY --chown=root:root ./config /etc/mysql

CMD [ "mysqld" ]

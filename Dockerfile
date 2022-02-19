ARG MARIADB_VERSION

FROM mariadb:${MARIADB_VERSION}

LABEL maintainer="Richard Boldiš <richard@boldis.dev>"

# Disable performance_schema to save memory
COPY --chown=root:root ./config/memory.cnf /etc/mysql/conf.d/memory.cnf

CMD [ "mysqld", "--character-set-server=utf8mb4", "--collation-server=utf8mb4_unicode_ci" ]

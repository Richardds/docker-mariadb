FROM mariadb:10.6.4

# Disable performance_schema to save memory
COPY --chown=root:root ./config/memory.cnf /etc/mysql/conf.d/memory.cnf

RUN chmod 0644 /etc/mysql/conf.d/memory.cnf

CMD [ "mysqld", "--character-set-server=utf8mb4", "--collation-server=utf8mb4_unicode_ci" ]

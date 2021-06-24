FROM mariadb:10.5

# Disable performance_schema to save memory
COPY ./config/memory.cnf /etc/mysql/conf.d/memory.cnf

CMD [ "mysqld", "--character-set-server=utf8mb4", "--collation-server=utf8mb4_unicode_ci" ]

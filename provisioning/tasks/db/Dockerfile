FROM ubuntu:14.04

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server && \
  rm -rf /var/lib/apt/lists/* && \
  sed -i 's/^\(bind-address\s.*\)/# \1/' /etc/mysql/my.cnf && \
  sed -i 's/^\(log_error\s.*\)/# \1/' /etc/mysql/my.cnf && \
  echo "mysqld_safe &" > /tmp/config && \
  echo "mysqladmin --silent --wait=30 ping || exit 1" >> /tmp/config && \
  bash /tmp/config && \
  rm -f /tmp/config


COPY ./startup.sh /tmp/startup.sh
RUN chmod +x /tmp/startup.sh

# Expose ports.
EXPOSE 3306

ENTRYPOINT ["/tmp/startup.sh"]


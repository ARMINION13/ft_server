FROM debian

RUN apt update
RUN apt-get upgrade
RUN apt search mysql-server
RUN apt-get -y install mariadb-server
RUN service mysql start
RUN touch /var/run/mysqld/mysqld.sock
RUN mysql -h localhost -P 3308 -u mysql -p

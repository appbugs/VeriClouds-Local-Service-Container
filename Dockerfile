FROM tutum/lamp:latest
ADD my.cnf /etc/mysql/conf.d/my.cnf
RUN rm -fr /app && git clone https://github.com/appbugs/VeriClouds-Local-Service.git /app
EXPOSE 80 3306
CMD ["/run.sh"]
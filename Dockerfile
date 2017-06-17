FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y
RUN service apache2 start
RUN echo "Added by dockerfile" > /var/www/html/madhu.html
EXPOSE 80
CMD apachectl  -f apache2.conf -DFOREGROUND

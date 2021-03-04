FROM ubuntu
MAINTAINER pmborras@optigame.com
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install -y nginx git 
EXPOSE 80
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/pmarcb/static-website-example.git /var/www/html/
CMD ["nginx", "-g", "daemon off;"]

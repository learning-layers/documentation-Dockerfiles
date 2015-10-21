FROM learninglayers/base
MAINTAINER István Koren, Yordan Manolov

# Install Nginx
RUN apt-get update \
  && apt-get -qqy --no-install-recommends install nginx unzip

# Download Swagger-UI
RUN wget https://github.com/swagger-api/swagger-ui/archive/v2.1.3.zip \
  && unzip v2.1.3.zip "dist/*" -d "/var/www"

EXPOSE 80

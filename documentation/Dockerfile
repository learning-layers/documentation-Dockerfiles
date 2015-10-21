FROM learninglayers/base
MAINTAINER István Koren, Yordan Manolov

# Install Swagger dependencies 
RUN apt-get update \
  && apt-get -qqy --no-install-recommends install \
     nginx \
     unzip
# Set build directory
WORKDIR /opt

# Download Swagger-UI
RUN wget https://github.com/swagger-api/swagger-ui/archive/v2.1.3.zip \
  && unzip swag* #"swagger-ui-2.1.3/dist/*" -d "/var/www"
  && cp -R * /usr/share/local/nginx/html

# Copy service configuration to location readable by reverse proxy
ENV SRVDIR /usr/local/openresty/conf/services
ENV AWDIR /etc/nginx/sites-available
ENV EWDIR /etc/nginx/sites-enabled

ADD ../nginx.conf .

CMD cp nginx.conf $SRVDIR \
    && cp nginx.conf $AWDIR \
    && cp -s nginx.conf $EWDIR \
    && nginx -g daemon off


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
  && unzip v2.1.3.zip #"swagger-ui-2.1.3/dist/*" -d "/var/www"
  && cp -R * /usr/share/local/nginx/html

# Copy service configuration to location readable by reverse proxy
ENV SRVDIR /usr/local/openresty/conf/services
 
CMD cp -R v2.1.3 $SRVDIR \
    && nginx -g daemon off


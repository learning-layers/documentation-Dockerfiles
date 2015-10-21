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
  && unzip v* \ 
  && cp -R swag* /usr/share/nginx/html

## Copy service configuration to location readable by reverse proxy
#ENV SRVDIR /usr/local/openresty/conf/services
#ENV AWDIR /etc/nginx/sites-available
#ENV EWDIR /etc/nginx/sites-enabled
#
#ADD ../nginx.conf .
#
#CMD cp nginx.conf $SRVDIR \
#    && cp nginx.conf $AWDIR \
#    && cp -s nginx.conf $EWDIR \
#    && nginx -g daemon off 

# Provide default port if random port mapping invoked
EXPOSE 80 

# Do not daemonze
RUN echo 'daemon off;' >> /etc/nginx/nginx.conf

CMD ["nginx"]

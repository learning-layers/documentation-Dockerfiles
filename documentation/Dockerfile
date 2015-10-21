FROM learninglayers/base
MAINTAINER István Koren, Yordan Manolov

# Install Nginx
RUN apt-get update \
  && apt-get -qqy --no-install-recommends install \
    #nginx \ 
    unzip

# Download Swagger-UI
WORKDIR /opt
ADD https://github.com/swagger-api/swagger-ui/archive/v2.1.3.zip . \
  && unzip v2.1.3.zip #\
#  && cp -R swagger-ui-2.1.3/dist/* /usr/local/nginx/html"

# EXPOSE 80

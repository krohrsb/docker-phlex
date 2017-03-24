FROM lsiobase/alpine.nginx
MAINTAINER Digitalhigh

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Digitalhigh version:- ${VERSION} Build-date:- ${BUILD_DATE}"

# add local files
COPY root/ /

# ports and volumes
EXPOSE 8080 8443
VOLUME /config

FROM nginx:1.13-alpine

LABEL name="Josh Dvir <josh@dvir.uk>"

RUN apk add --update --no-cache unzip

ADD https://github.com/royrusso/elasticsearch-HQ/archive/master.zip /tmp/elasticsearch-HQ-master.zip

RUN unzip -q /tmp/elasticsearch-HQ-master.zip -d /tmp \
  && mv -f /tmp/elasticsearch-HQ-master/* /usr/share/nginx/html \
  && rm -rf /tmp/*
FROM node:16.6.2-stretch-slim

WORKDIR /usr/app

COPY validate.sh /validate.sh

ENTRYPOINT ["/validate.sh"]

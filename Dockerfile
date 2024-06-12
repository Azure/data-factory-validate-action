FROM node:18.20.3-buster-slim

WORKDIR /usr/app

COPY validate.sh /validate.sh

ENTRYPOINT ["/validate.sh"]

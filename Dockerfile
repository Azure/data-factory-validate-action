FROM node:16.6.2-stretch-slim

WORKDIR /usr/app

COPY validate.sh /validate.sh

RUN npm init -y
RUN npm install @microsoft/azure-data-factory-utilities

ENTRYPOINT ["/validate.sh"]

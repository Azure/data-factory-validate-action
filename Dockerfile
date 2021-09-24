FROM node:16.6.2-stretch-slim

RUN npm init -y
RUN npm install @microsoft/azure-data-factory-utilities

COPY validate.sh /validate.sh

ENTRYPOINT ["/validate.sh"]

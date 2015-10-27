FROM alpine

RUN apk add --update nodejs

COPY ./src /src

RUN cd /src; npm install

EXPOSE  80

CMD ["node", "/src/index.js"]
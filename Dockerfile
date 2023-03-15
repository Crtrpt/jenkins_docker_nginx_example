FROM ubuntu
WORKDIR /app

COPY ./bin /app

EXPOSE 80

CMD [ "start" ]
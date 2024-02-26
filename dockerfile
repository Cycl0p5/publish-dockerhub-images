FROM alpine
RUN apk add --no-cache bash

WORKDIR /app

COPY entrypoint.sh /app
RUN chmod +x entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]
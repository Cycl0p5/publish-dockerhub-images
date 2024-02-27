FROM alpine
RUN apk add --no-cache bash

WORKDIR /app

# Running into issues with building on windows when I copy file is blank on image
# Adding entrypoint.sh as a volume
# VOLUME entrypoint.sh /app
COPY --chmod=777 entrypoint.sh /app

# RUN chmod 777 entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]
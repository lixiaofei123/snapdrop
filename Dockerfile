FROM nginx

RUN \
  echo "**** install runtime packages ****" && \
  apt update &&\
  apt install -y nodejs npm 

WORKDIR /app

COPY client/ client/
COPY server/ server/

RUN cd /app/server && \
    npm i && \
    echo "**** cleanup ****" && \
    rm -rf /tmp/* /app/.cache /var/lib/apt/lists/*

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY docker-entrypoint.sh /app/docker-entrypoint.sh

EXPOSE 80

ENTRYPOINT ["sh","/app/docker-entrypoint.sh"]
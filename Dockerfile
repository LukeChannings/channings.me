FROM mhart/alpine-node:6

RUN npm install -g http-server

WORKDIR /src

ADD assets /src/assets
ADD src/index.html /src
ADD src/style.css /src

EXPOSE 8080

CMD ["http-server", "."]

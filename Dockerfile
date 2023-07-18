FROM grafana/k6:latest

USER root

WORKDIR /home/k6

ENV GOPATH=/root/go
ENV GOBIN=${GOPATH}/bin
ENV PATH=${PATH}:${GOBIN}

RUN apk add --update --no-cache \
    git \
    go \
    yarn && \
    go install go.k6.io/xk6/cmd/xk6@latest && \
    xk6 build latest --with github.com/grafana/xk6-sql && \
    cp -R ./k6 /usr/bin/k6

VOLUME /home/k6

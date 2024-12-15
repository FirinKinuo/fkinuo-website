FROM node:21 as build-vite

WORKDIR /build

COPY package*.json tsconfig.json *.config.js index.html Makefile ./
COPY public ./public
COPY .git/ ./.git/
COPY src/ ./src/


RUN make build-vite

FROM golang:1.22 as build-go

WORKDIR /build

COPY go.mod go.sum Makefile main.go ./
COPY .git/ ./.git
COPY --from=build-vite /build/dist/ ./dist

RUN make build-go

FROM scratch as final

MAINTAINER FirinKinuo <git@fkinuo.dev>

WORKDIR /app

COPY --from=build-go /build/fkinuo-website ./

EXPOSE 5555

ENTRYPOINT ["./fkinuo-website", "--addr", "0.0.0.0:5555"]

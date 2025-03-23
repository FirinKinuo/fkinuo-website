FROM node:21 AS build-vite

WORKDIR /build

COPY package*.json tsconfig.json *.config.js Makefile ./
COPY web/public ./public
COPY .git/ ./.git/
COPY web/ ./web/


RUN make build-vite

FROM golang:1.22 AS build-go

WORKDIR /build

COPY go.mod go.sum Makefile main.go ./
COPY .git/ ./.git
COPY --from=build-vite /build/dist/ ./dist

RUN make build-go

FROM scratch AS final

LABEL org.opencontainers.image.authors="FirinKinuo <git@fkinuo.dev>"

WORKDIR /app

COPY --from=build-go /build/fkinuo-website ./

EXPOSE 5555

ENTRYPOINT ["./fkinuo-website", "--addr", "0.0.0.0:5555"]

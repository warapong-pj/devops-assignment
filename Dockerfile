FROM golang:1.21.4-alpine3.18 AS build
WORKDIR /go/src/hello-api
COPY * /go/src/hello-api
RUN go mod tidy && go build && chmod +X hello-api

FROM alpine:3.18
RUN adduser -h /home/app -D app
COPY --chown=app:app --from=build /go/src/hello-api/hello-api /home/app/hello-api
WORKDIR /home/app
EXPOSE 8080
USER app
ENTRYPOINT [ "/home/app/hello-api" ]
FROM golang as builder
WORKDIR /opt/helloworld
COPY ./main.go /opt/helloworld
RUN go build -ldflags '-w -extldflags "-static"'

FROM ubuntu
COPY --from=builder /opt/helloworld/helloworld /helloworld
EXPOSE 8081
CMD ["/helloworld"]

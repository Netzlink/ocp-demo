FROM golang as builder
WORKDIR /opt/helloworld
COPY ./main.go /opt/helloworld
RUN go build -ldflags '-w -extldflags "-static"'
EXPOSE 8081
CMD ["/opt/helloworld/helloworld"]

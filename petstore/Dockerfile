FROM golang:1.25
COPY . /server/
WORKDIR /server/
RUN go mod init server
RUN go mod tidy
RUN go build -o petstore petstore.go
CMD ["./petstore", "--grpcTraces", "--traceSampling=.1"]

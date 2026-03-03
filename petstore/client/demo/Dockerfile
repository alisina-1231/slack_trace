FROM golang:1.24.4
COPY . /demo/
WORKDIR /demo/
RUN go env -w GOPROXY=direct GO111MODULE=on
WORKDIR /demo/client/demo
RUN go mod init demo
RUN go mod tidy
RUN go build -o demo demo.go
CMD ["./demo"]

FROM golang:1.24.4
COPY . /server
WORKDIR /server
RUN go env -w GOPROXY=direct GO111MODULE=on
RUN go mod init github.com/alisina-1231/slack_trace
RUN go mod tidy
WORKDIR /server/ops
RUN go build -o ops ops.go
CMD ["./ops", "--jaegerAddr=jaeger-all-in-one:16685", "--promAddr=prometheus:9000", "--petstoreAddr=petstore:6742"]

FROM golang:1.24.4
COPY . /server/
WORKDIR /server/
RUN go env -w GOPROXY=direct
RUN go build -o main ./main.go
CMD ["./main"]

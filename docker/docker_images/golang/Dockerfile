FROM golang:1.18

WORKDIR $GOPATH/src/web-sample-app

COPY . .

RUN go build -o ./out/web-sample-app main.go

CMD ["./out/web-sample-app"]
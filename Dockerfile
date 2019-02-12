FROM golang:1.11-alpine3.8 AS builder
RUN apk add --no-cache git && go get github.com/linuxkit/linuxkit/src/cmd/linuxkit

FROM docker:18.09
COPY --from=builder /go/bin/linuxkit /usr/local/bin/linuxkit
CMD ["linuxkit"]

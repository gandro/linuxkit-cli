FROM golang:1.11 AS builder
RUN go get github.com/linuxkit/linuxkit/src/cmd/linuxkit

FROM docker:18.09
COPY --from=builder /go/bin/linuxkit /usr/local/bin/linuxkit
CMD ["linuxkit"]

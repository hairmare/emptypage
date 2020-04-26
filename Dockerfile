FROM golang AS builder

COPY . /usr/local/src/app

WORKDIR /usr/local/src/app

RUN GOOS=linux GOARCH=amd64 go build -tags netgo -a -o /app


FROM scratch

COPY --from=builder /app /app
COPY --from=builder /etc/passwd /etc/passwd
USER nobody

ENTRYPOINT ["/app"]

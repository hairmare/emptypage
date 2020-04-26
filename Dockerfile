FROM golang AS builder

COPY . /usr/local/src/app

WORKDIR /usr/local/src/app

RUN GOOS=linux GOARCH=amd64 go build -tags netgo -a -o /emptypage


FROM scratch

COPY --from=builder /emptypage
COPY etc/passwd /etc/passwd
USER nobody

ENTRYPOINT ["/emptypage"]

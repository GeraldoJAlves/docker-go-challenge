FROM golang as BUILDER

WORKDIR /app

COPY main.go .

RUN go build main.go

FROM scratch

WORKDIR /app

COPY --from=BUILDER /app/main challenge-entrypoint

CMD ["/app/challenge-entrypoint"]
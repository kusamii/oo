FROM alpine:latest
RUN apk add --no-cache bash
COPY --chmod=755 ser /bin/ser
EXPOSE 8080
CMD ["sh", "-c", "ser server --socks5 --key $ka --auth $ka"]
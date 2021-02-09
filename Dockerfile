FROM alpine:3.13.1
RUN apk update && apk add openssh-client && apk add bash
COPY entrypoint.sh entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]
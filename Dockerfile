FROM gliderlabs/alpine:latest
RUN apk --update add mc
ENTRYPOINT ["/sbin/init"]

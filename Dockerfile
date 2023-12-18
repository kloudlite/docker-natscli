FROM alpine
RUN apk add --no-cache curl
RUN curl -L0 https://github.com/nats-io/natscli/releases/download/v0.1.1/nats-0.1.1-linux-amd64.zip > nats-0.1.1-linux-amd64.zip \
&& unzip nats-0.1.1-linux-amd64.zip \
&& mv nats-0.1.1-linux-amd64/nats /usr/local/bin \
&& rm nats-0.1.1-linux-amd64.zip \
&& rm -rf nats-0.1.1-linux-amd64
CMD [ "nats" ]
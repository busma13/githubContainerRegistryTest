from debian:bullseye

RUN apt-get update && \
    apt-get install -y tini

ENTRYPOINT ["/usr/bin/tini", "--"]
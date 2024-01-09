FROM debian:bullseye

LABEL org.opencontainers.image.source = "https://github.com/busma13/githubContainerRegistryTest"
LABEL org.opencontainers.image.description="testImageForGHCR"
LABEL org.opencontainers.image.licenses=MIT

RUN apt-get update && \
    apt-get install -y tini

ENTRYPOINT ["/usr/bin/tini", "--"]
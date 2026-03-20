FROM ghcr.io/zeroclaw-labs/zeroclaw:debian

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    gh \
    curl \
    ca-certificates \
    && curl -fsSL https://deb.nodesource.com/setup_current.x | bash - \
    && apt-get install -y nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER 65534:65534

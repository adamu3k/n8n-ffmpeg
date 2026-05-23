FROM n8nio/n8n:latest

USER root

RUN apt-get update && apt-get install -y \
    ffmpeg \
    bash \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

USER node

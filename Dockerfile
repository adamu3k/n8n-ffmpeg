FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache \
    ffmpeg \
    bash \
    curl \
    git

USER node

FROM node:20-bookworm

# Install ffmpeg and tools
RUN apt-get update && apt-get install -y \
    ffmpeg \
    curl \
    git \
    bash \
    && rm -rf /var/lib/apt/lists/*

# Install n8n globally
RUN npm install -g n8n

# Create n8n folder
RUN mkdir /data

WORKDIR /data

EXPOSE 5678

CMD ["n8n"]

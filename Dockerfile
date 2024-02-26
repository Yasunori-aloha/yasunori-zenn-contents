FROM node:20.11.1-bullseye-slim

RUN apt-get update && \
    apt-get install -y git make && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
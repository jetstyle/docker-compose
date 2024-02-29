# Use Alpine Linux as the base image
FROM alpine:3.17

# Install CA Certificates 
RUN apk --no-cache add ca-certificates \
  && update-ca-certificates

# Install Docker
RUN apk add --no-cache docker

# Install dependencies for fetching and running Docker Compose
RUN apk add --no-cache curl

# Set the version of Docker Compose you wish to install
ARG COMPOSE_VERSION=2.24.6

# Determine the architecture for the Docker Compose binary
RUN curl -L "https://github.com/docker/compose/releases/download/v${COMPOSE_VERSION}/docker-compose-linux-x86_64" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

RUN ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

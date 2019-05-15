FROM node:12.2-alpine

# Setup working directory
RUN mkdir -p /usr/local/src && \
    chown node:node /usr/local/src
WORKDIR /usr/local/src

# Copy sources
COPY --chown=node:node ./src /usr/local/src

# Set current user
USER node

# Install dependencies
RUN yarn install

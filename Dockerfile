FROM sipeed/picoclaw:launcher

# Install common utilities and nodejs
RUN apk add --no-cache bash git github-cli nodejs npm
# Use the Alpine base image
FROM alpine:latest

# Install netcat
RUN apk --no-cache --update add netcat-openbsd bash

# Copy netcat scripts to the container
COPY client_script.sh /scripts/client_script.sh
COPY server_script.sh /scripts/server_script.sh

# Make scripts executable
RUN chmod +x /scripts/client_script.sh /scripts/server_script.sh

# Set the working directory
WORKDIR /scripts

CMD ["sleep infinity"]

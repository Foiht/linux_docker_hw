# Use the Alpine base image
FROM alpine:latest

# Install netcat
RUN apk --no-cache add netcat-openbsd
RUN apk --no-cache --update --verbose add grep bash tcpdump && \
    rm -rf /var/cache/apk/* /tmp/* /sbin/halt /sbin/poweroff /sbin/reboot

# Copy netcat scripts to the container
COPY client_script.sh /scripts/client_script.sh
COPY server_script.sh /scripts/server_script.sh

# Make scripts executable
RUN chmod +x /scripts/client_script.sh /scripts/server_script.sh

# Set the working directory
WORKDIR /scripts

# Define the entry point
ENTRYPOINT ["/bin/sh", "/usr/sbin/tcpdump"]

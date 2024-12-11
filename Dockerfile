FROM instrumentisto/coturn:latest

# Copy the TURN server configuration file
COPY turnserver.conf /etc/coturn/turnserver.conf

# Expose TURN/STUN ports
EXPOSE 3478/udp
EXPOSE 3478/tcp
EXPOSE 5349/tcp

# Run Coturn
CMD ["turnserver", "-c", "/etc/coturn/turnserver.conf", "--no-console-log"]

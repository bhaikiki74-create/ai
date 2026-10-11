FROM ghcr.io/lavalink-devs/lavalink:4

WORKDIR /opt/Lavalink

# Copy our custom configuration
COPY application.yml application.yml

# Expose default Lavalink port
EXPOSE 2333

# Run Lavalink with optimized Java heap memory
ENTRYPOINT ["java", "-Xmx512M", "-jar", "Lavalink.jar"]

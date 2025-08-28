FROM ubuntu:22.04

# Install curl & unzip
RUN apt-get update && apt-get install -y curl unzip

# Download Botpress
RUN curl -L https://github.com/botpress/botpress/releases/download/v12.30.7/botpress-v12_30_7-linux-x64.tar.gz -o bp.tgz && \
    tar -xzf bp.tgz && \
    mv botpress bp && \
    chmod +x bp/bp

# Expose port
EXPOSE 3000

# Start Studio on 0.0.0.0:3000
CMD ["./bp/bp", "--studio-port", "3000", "--port", "3000", "--host", "0.0.0.0"]
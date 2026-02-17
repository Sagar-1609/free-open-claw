FROM ubuntu:22.04

# Install dependencies
RUN apt update && apt install -y curl bash

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | bash

# Expose Ollama port
EXPOSE 11434

# Start script
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]

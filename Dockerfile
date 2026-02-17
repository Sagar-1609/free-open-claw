FROM ollama/ollama:latest

EXPOSE 11434

CMD ["ollama", "serve", "--host", "0.0.0.0"]

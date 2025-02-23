FROM kestra/kestra:latest

# Install dependencies (bash)
USER root
RUN apt-get update && apt-get install -y bash  # Use apt-get for Debian

# Copy wait-for-it script
COPY wait-for-it.sh /app/wait-for-it.sh
RUN chmod +x /app/wait-for-it.sh

# Override entrypoint
ENTRYPOINT ["/app/wait-for-it.sh", "kestra_postgres:5432", "--timeout=120", "--"]
CMD ["server", "standalone"]
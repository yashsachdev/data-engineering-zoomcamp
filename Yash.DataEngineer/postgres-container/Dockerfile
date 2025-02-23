FROM postgres:13
# Set environment variables (values will be injected via docker-compose)
ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD}
ENV POSTGRES_DB=ny_taxi

# Set work directory (optional)
WORKDIR /docker-entrypoint-initdb.d

# Copy initialization scripts (if any)
COPY init.sql /docker-entrypoint-initdb.d/

# Expose PostgreSQL port
EXPOSE 5432

# Default command (inherited from base image)
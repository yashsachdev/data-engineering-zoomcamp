# Use Python as the base image
FROM python:3.9.1

# Set work directory
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY ingest_data.py ingest_data.py

ENTRYPOINT ["python", "ingest_data.py"]
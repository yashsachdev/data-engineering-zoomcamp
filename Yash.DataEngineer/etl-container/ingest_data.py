import pandas as pd
from sqlalchemy import create_engine
import os

# Database connection details
DATABASE_URL = os.getenv('DATABASE_URL', 'postgresql://admin:secret@postgres:5432/ny_taxi')

# Create an engine instance
engine = create_engine(DATABASE_URL)

# Read data from CSV file with low_memory=False to handle mixed types
df = pd.read_csv('/containerdata/yellow_tripdata_2021-01.csv.gz', iterator=True, chunksize=100000, low_memory=False)

# Ingest data into the database
for chunk in df:
    print(f"Ingesting chunk with {len(chunk)} records")
    chunk.to_sql(name='yellow_taxi_data', con=engine, if_exists='append', index=False)
    print("Chunk ingested successfully")
# ================================
# General Variables
# ================================
variable "project" {
  description = "data talk data engieering project"
  default     = "dtc-2025"
}

variable "region" {
  description = "Region for GCP resources"
  # Choose from "us-central1", "asia-south1" (Mumbai), "asia-south2" (Delhi)
  default     = "asia-south1"
}

variable "location" {
  description = "Project Location"
  # Choose "US" for global or "IN" for India
  default     = "IN"
}

# ================================
# GCP Credentials
# ================================
variable "gcp_credentials" {
  description = "Path to GCP Service Account JSON file"
  default     = "Y:\\datatalks\\zoomcamp.json"
}

# ================================
# GCP BigQuery
# ================================
variable "bq_dataset_name" {
  description = "BigQuery Dataset Name"
  default     = "demo_dataset"
}

variable "bq_dataset_location" {
  description = "BigQuery Dataset Location"
  # Options: US, asia-south1 (Mumbai), asia-south2 (Delhi)
  default     = "asia-south1"
}

# ================================
# GCP Storage & Buckets
# ================================
variable "gcs_bucket_name" {
  description = "Google Cloud Storage Bucket Name"
  default     = "terraform-demo-terra-bucket"
}

variable "gcs_storage_class" {
  description = "GCS Bucket Storage Class"
  default     = "STANDARD"
}

variable "gcs_bucket_location" {
  description = "Location for GCS Bucket"
  # Options: US, asia-south1 (Mumbai), asia-south2 (Delhi)
  default     = "asia-south1"
}
